.section .rodata

helloworld: .ascii "Hello, World!\000"	/* cr added by puts() magic */

.text
.global main

main:
  stmfd	sp!, {fp, lr}
  add	fp, sp, #4
  ldr	r0, =helloworld			/* point to Hello World */
  bl	puts				/* print using puts() */

gtfo:
  mov	r3, #0
  mov	r0, r3
  ldmfd	sp!, {fp, pc}


