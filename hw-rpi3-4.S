.section .rodata

helloworld: .ascii "Hello, World!\012\000"

.text
.global main

main:
  stmfd	sp!, {fp, lr}
  add	fp, sp, #4
  sub	sp, sp, #8
  ldr	r3, =helloworld		/* point to hello world */
  str	r3, [fp, #-8]
  b	snarf			/* lol a goto */

printloop:
  ldr	r3, [fp, #-8]
  add	r2, r3, #1
  str	r2, [fp, #-8]
  ldrb	r3, [r3]
  mov	r0, r3
  bl	putchar			/* print a single character */

snarf:
  ldr	r3, [fp, #-8]
  ldrb	r3, [r3]
  cmp	r3, #0			/* is it the null terminator? */
  bne	printloop		/* go again if it isn't */

gtfo:
  mov	r3, #0
  mov	r0, r3
  sub	sp, fp, #4
  ldmfd	sp!, {fp, pc}


