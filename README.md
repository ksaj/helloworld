# helloworld
Hello World, using 5 different methods in Assembler on Raspberry Pi, in increasing levels of complexity.

A makefile has been included to simplify compilation. Tested only on Raspberry Pi 3, but they should work on the other models just fine. The code is clean and quite straight forward, but I am just learning ARM assembly language. There are probably better ways to do some of the things I came up with. Take it as a challenge, and show me your ideas.


## hw-rpi3-1

Hello World using puts(). Notice it doesn't need a carriage return, while the other methods do. The puts() call is rather slobber-proof.

## hw-rpi3-2

Hello World using write(). I suspect this is the more typical method.

## hw-rpi3-3

Hello World using fwrite(). If you need C-style format strings, this is the way to go.

## hw-rpi3-4

Hello World using putchar. This is pretty much how the computer actually does it deep down inside. I had to use a goto to initiate the loop because ARM doesn't do jz in the same way as Intel. It is strangely easier to reverse the flow and jump if *not* zero. 

## hw-rpi3-5

Hello World bypassing clib altogether, and talking direcly to the kernel. Apparently this is a no-no, even if it is theoretically more efficient.
