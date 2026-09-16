.section .text.start
.global _start

_start:
    /* Initialize stack pointer to the top of 8 KB RAM */
    li sp, 0x00002000
    call main

trap:
    /* Trap loop on unexpected exit or fault */
    j trap