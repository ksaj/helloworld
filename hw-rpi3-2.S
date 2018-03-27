.section .rodata

helloworld: .ascii "Hello, World!\012\000"

.text
.global main

main:
  stmfd	sp!, {fp, lr}
  add	fp, sp, #4
  mov	r0, #1
  ldr	r1, =helloworld			/* point to Hello World */
  mov	r2, #14				/* number of chars to write */
  bl	write				/* print using write() */

gtfo:
  mov	r3, #0
  mov	r0, r3
  ldmfd	sp!, {fp, pc}

