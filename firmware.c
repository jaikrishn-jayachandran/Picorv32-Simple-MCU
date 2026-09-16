#define GPIO0_OUT (*(volatile unsigned int *)(0x40000000u + 0x00u))
#define GPIO0_DIR (*(volatile unsigned int *)(0x40000000u + 0x04u))
#define GPIO0_IN  (*(volatile unsigned int *)(0x40000000u + 0x08u))

#define GPIO1_OUT (*(volatile unsigned int *)(0x40001000u + 0x00u))
#define GPIO1_DIR (*(volatile unsigned int *)(0x40001000u + 0x04u))
#define GPIO1_IN  (*(volatile unsigned int *)(0x40001000u + 0x08u))

#define GPIO2_OUT (*(volatile unsigned int *)(0x40002000u + 0x00u))
#define GPIO2_DIR (*(volatile unsigned int *)(0x40002000u + 0x04u))
#define GPIO2_IN  (*(volatile unsigned int *)(0x40002000u + 0x08u))

// Pin numbers
#define G0_IN_PIN   1
#define G0_OUT_PIN  15
#define G1_IN_PIN   10
#define G1_OUT_PIN  20
#define G2_IN_PIN   0
#define G2_OUT_PIN  31

#define DELAY       50000u   // firmware loop count -> roughly 500 ms

static void delay(volatile unsigned int n) { while (n--) {} }

int main(void) {
    // ---- Set directions: 1 = output, 0 = input ----
    // Only the chosen output pins are outputs. Everything else is input.
    GPIO0_DIR = (1u << G0_OUT_PIN);
    GPIO1_DIR = (1u << G1_OUT_PIN);
    GPIO2_DIR = (1u << G2_OUT_PIN);

    // Start with all outputs low
    GPIO0_OUT = 0;
    GPIO1_OUT = 0;
    GPIO2_OUT = 0;

    while (1) {
        // ---- GPIO0_15 blinks ----
        GPIO0_OUT = (1u << G0_OUT_PIN);
        delay(DELAY);
        GPIO0_OUT = 0;
        delay(DELAY);

        // ---- GPIO1_20 blinks ----
        GPIO1_OUT = (1u << G1_OUT_PIN);
        delay(DELAY);
        GPIO1_OUT = 0;
        delay(DELAY);

        // ---- GPIO2_31 blinks ----
        GPIO2_OUT = (1u << G2_OUT_PIN);
        delay(DELAY);
        GPIO2_OUT = 0;
        delay(DELAY);
    }
    return 0;
}