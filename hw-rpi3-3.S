.section .rodata

helloworld: .ascii "Hello, World!\012\000"

.text
.global	main

main:
  stmfd	sp!, {fp, lr}
  add	fp, sp, #4
  ldr	r3, stdoutaddr			/* point r3 to stdout */
  ldr	r3, [r3]
  ldr	r0, =helloworld			/* point r0 to Hello World */
  mov	r1, #1
  mov	r2, #14
  bl	fwrite				/* print using fwrite() */

gtfo:
  mov	r3, #0
  mov	r0, r3
  ldmfd	sp!, {fp, pc}

.align 2

stdoutaddr:     .word stdout

