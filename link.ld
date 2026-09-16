ENTRY(_start)

SECTIONS
{
    /* Reset Vector / Instruction Memory Base */
    . = 0x00000000;

    .text : {
        *(.text.start)
        *(.text*)
    }

    .rodata : {
        *(.rodata*)
    }

    .data : {
        *(.data*)
    }

    .bss : {
        *(.bss*)
        *(COMMON)
    }

    /* Reserve Stack space up to 0x00002000 (8 KB RAM footprint) */
    . = ALIGN(4);
    _end = .;
}