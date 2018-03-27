.section .rodata

helloworld: .ascii "Hello, World!\012\000"

.text
.global main

main:
  mov	r0, #1				/* stdout */
  ldr	r1, =helloworld			/* point to Hello World */
  mov	r2, #14				/* number of chars to write */

  mov	r7, #4				/* raw system call for write */
  swi	#0				/* print without using clib */

gtfo:
  mov	r0, #0
  bx	lr

