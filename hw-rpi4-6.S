.section .rodata

helloworld: .ascii "Hello, World!\n\000"

.text
.global	main

main:
  push	{fp, lr}
  add	fp, sp, #4
  ldr	r0, =helloworld // point to helloworld
  bl	printf          // print using printf()

gtfo:
  mov	r3, #0
  mov	r0, r3
  pop	{fp, pc}
