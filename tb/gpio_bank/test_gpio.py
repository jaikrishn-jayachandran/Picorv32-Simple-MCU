import cocotb
from cocotb.clock import Clock
from cocotb.triggers import RisingEdge, Timer
from cocotbext.axi import AxiLiteBus, AxiLiteMaster

# Address offsets defined in rtl/gpio_bank.sv
ADDR_DATA = 0x00
ADDR_DIR  = 0x04
ADDR_IN   = 0x08

CLK_PERIOD_NS = 10


# -----------------------------------------------------------------------------
# int <-> bytes helpers (cocotbext-axi works in bytes)
# -----------------------------------------------------------------------------
def u32_to_bytes(value):
    return int(value).to_bytes(4, "little")


def bytes_to_u32(data):
    if isinstance(data, int):
        return data
    return int.from_bytes(data, "little")


# -----------------------------------------------------------------------------
# Reset helper
# -----------------------------------------------------------------------------
async def reset_dut(dut, cycles=5):
    dut.rst_ni.value = 0
    dut.gpio_in.value = 0
    await Timer(20, unit="ns")
    dut.rst_ni.value = 1
    for _ in range(cycles):
        await RisingEdge(dut.clk_i)


# -----------------------------------------------------------------------------
# Test
# -----------------------------------------------------------------------------
@cocotb.test()
async def test_gpio(dut):
    """Test AXI4-Lite Write and Read operations for GPIO module."""

    # 1. Start clock (100 MHz -> 10 ns period)
    cocotb.start_soon(Clock(dut.clk_i, CLK_PERIOD_NS, unit="ns").start())

    # 2. Build the AXI-Lite bus from the s_axil_* ports on the DUT
    axil_bus = AxiLiteBus.from_prefix(dut, "s_axil")

    # 3. Create the master. rst_ni is active-LOW -> reset_active_level=False
    axil = AxiLiteMaster(
        axil_bus,
        dut.clk_i,
        dut.rst_ni,
        reset_active_level=False,
    )

    # 4. Apply reset
    await reset_dut(dut)
    dut._log.info("Reset complete.")

    # -------------------------------------------------------------------------
    # TEST 1: Set directions (GPIO 10 = Output, GPIO 2 = Input)
    # -------------------------------------------------------------------------
    dir_mask = 1 << 10
    await axil.write(ADDR_DIR, u32_to_bytes(dir_mask))

    assert dut.gpio_dir.value == dir_mask, (
        f"Expected dir {hex(dir_mask)}, got {hex(dut.gpio_dir.value)}"
    )
    dut._log.info("TEST 1 PASSED: Direction register configured successfully.")

    # -------------------------------------------------------------------------
    # TEST 2: Drive output pins (GPIO 10 = HIGH)
    # -------------------------------------------------------------------------
    out_mask = 1 << 10
    await axil.write(ADDR_DATA, u32_to_bytes(out_mask))

    assert dut.gpio_out.value == out_mask, (
        f"Expected out {hex(out_mask)}, got {hex(dut.gpio_out.value)}"
    )
    dut._log.info("TEST 2 PASSED: Output register written successfully.")

    # -------------------------------------------------------------------------
    # TEST 3: Read physical input pins (GPIO 2 and GPIO 15 HIGH externally)
    # -------------------------------------------------------------------------
    sensor_input = (1 << 2) | (1 << 15)
    dut.gpio_in.value = sensor_input
    await RisingEdge(dut.clk_i)

    resp = await axil.read(ADDR_IN, 4)
    read_val = bytes_to_u32(resp.data)

    assert read_val == sensor_input, (
        f"Expected read {hex(sensor_input)}, got {hex(read_val)}"
    )
    dut._log.info("TEST 3 PASSED: Read physical inputs over AXI successfully.")