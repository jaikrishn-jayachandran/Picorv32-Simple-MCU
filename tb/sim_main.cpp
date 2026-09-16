#include "Vsoc_top.h"
#include "verilated.h"
#include <iostream>
#include <iomanip>
#include <cstdint>

static vluint64_t main_time = 0;

// -------- Physical wire emulation --------
// Each input pin is driven from its paired output pin,
// like a soldered wire between the two header pins.
static void update_wires(Vsoc_top* top) {
    uint32_t g0_out = top->gpio0_out;
    uint32_t g1_out = top->gpio1_out;
    uint32_t g2_out = top->gpio2_out;

    // GPIO0_15 (out) --- wire ---> GPIO0_1 (in)
    uint32_t g0_in = 0;
    g0_in |= ((g0_out >> 15) & 1u) << 1;

    // GPIO1_20 (out) --- wire ---> GPIO1_10 (in)
    uint32_t g1_in = 0;
    g1_in |= ((g1_out >> 20) & 1u) << 10;

    // GPIO2_31 (out) --- wire ---> GPIO2_0 (in)
    uint32_t g2_in = 0;
    g2_in |= ((g2_out >> 31) & 1u) << 0;

    top->gpio0_in = g0_in;
    top->gpio1_in = g1_in;
    top->gpio2_in = g2_in;
}

static void tick(Vsoc_top* top) {
    // Falling edge
    update_wires(top);
    top->clk_i = 0; top->eval(); main_time++;

    // Rising edge
    update_wires(top);
    top->clk_i = 1; top->eval(); main_time++;

    // Let the (ideal, zero-delay) wires settle after the rising edge
    update_wires(top);
    top->eval();
}

int main(int argc, char** argv) {
    Verilated::commandArgs(argc, argv);
    Vsoc_top* top = new Vsoc_top;

    std::cout << "=== GPIO loopback test ===\n";
    std::cout << "Wires:  GPIO0_15 -> GPIO0_1\n";
    std::cout << "        GPIO1_20 -> GPIO1_10\n";
    std::cout << "        GPIO2_31 -> GPIO2_0\n";
    std::cout << "(press Ctrl-C to stop)\n\n";

    // ---- Drive every input to a known state ----
    top->clk_i    = 0;
    top->rst_ni   = 0;
    top->gpio0_in = 0;
    top->gpio1_in = 0;
    top->gpio2_in = 0;

    // ---- Reset for 16 cycles ----
    for (int i = 0; i < 16; ++i) tick(top);
    top->rst_ni = 1;
    tick(top);
    std::cout << "[OK] reset released, CPU running from RAM\n\n";

    // Last seen output value for each pin
    int last_g0 = -1, last_g1 = -1, last_g2 = -1;

    // Loopback counters
    long ok0 = 0, bad0 = 0;
    long ok1 = 0, bad1 = 0;
    long ok2 = 0, bad2 = 0;

    // Heartbeat interval (cycles)
    const long HEARTBEAT = 2'000'000;

    // ---- Infinite loop: keep clocking and printing forever ----
    for (long c = 0; ; ++c) {
        tick(top);

        int g0_out15 = (top->gpio0_out >> 15) & 1;
        int g1_out20 = (top->gpio1_out >> 20) & 1;
        int g2_out31 = (top->gpio2_out >> 31) & 1;

        int g0_in1   = (top->gpio0_in  >> 1)  & 1;
        int g1_in10  = (top->gpio1_in  >> 10) & 1;
        int g2_in0   = (top->gpio2_in  >> 0)  & 1;

        // Loopback check (running counters)
        if (g0_in1  == g0_out15) ok0++; else bad0++;
        if (g1_in10 == g1_out20) ok1++; else bad1++;
        if (g2_in0  == g2_out31) ok2++; else bad2++;

        // Log any change on an output pin
        if (g0_out15 != last_g0) {
            std::cout << "cycle " << std::setw(9) << c
                      << "  GPIO0_15=" << g0_out15
                      << "  GPIO0_1="  << g0_in1
                      << (g0_in1 == g0_out15 ? "   OK" : "   MISMATCH")
                      << "\n";
            last_g0 = g0_out15;
        }
        if (g1_out20 != last_g1) {
            std::cout << "cycle " << std::setw(9) << c
                      << "  GPIO1_20=" << g1_out20
                      << "  GPIO1_10=" << g1_in10
                      << (g1_in10 == g1_out20 ? "   OK" : "   MISMATCH")
                      << "\n";
            last_g1 = g1_out20;
        }
        if (g2_out31 != last_g2) {
            std::cout << "cycle " << std::setw(9) << c
                      << "  GPIO2_31=" << g2_out31
                      << "  GPIO2_0="  << g2_in0
                      << (g2_in0 == g2_out31 ? "   OK" : "   MISMATCH")
                      << "\n";
            last_g2 = g2_out31;
        }

        // Heartbeat so you can see it is alive between transitions
        if ((c % HEARTBEAT) == 0) {
            std::cout << "--- heartbeat cycle " << std::setw(9) << c
                      << "  ok0=" << ok0 << " bad0=" << bad0
                      << "  ok1=" << ok1 << " bad1=" << bad1
                      << "  ok2=" << ok2 << " bad2=" << bad2
                      << " ---\n";
        }
    }

    // Unreachable, but kept for cleanliness
    std::cout << "\n=== Loopback summary ===\n";
    std::cout << "GPIO0 (15->1):  ok=" << ok0 << "  bad=" << bad0 << "\n";
    std::cout << "GPIO1 (20->10): ok=" << ok1 << "  bad=" << bad1 << "\n";
    std::cout << "GPIO2 (31->0):  ok=" << ok2 << "  bad=" << bad2 << "\n";

    delete top;
    return 0;
}