# helloworld
Hello World, using 5 different methods in Assembler on Raspberry Pi, in increasing levels of complexity. Chooose your Linux, and these should work without alteration.

A makefile has been included to simplify compilation. Tested only on Raspberry Pi 3 (Raspbian), but they should work on the other models just fine. The code is clean and quite straight forward, but I am just learning ARM assembly language. There are probably better ways to do some of the things I came up with. Take it as a challenge, and show me your ideas.


## hw-rpi3-1

Hello World using puts(). Notice it doesn't need a carriage return, while the other methods do. The puts() call is rather slobber-proof.

## hw-rpi3-2

Hello World using write(). I suspect this is the more typical method.

## hw-rpi3-3

Hello World using fwrite(). fwrite() is typically used to work with binary data instead of text mode. Of course, ascii is made up of binary, so it works perfectly well for spitting out words, too.

## hw-rpi3-4

Hello World using putchar. This is closer to how the computer actually does it deep down inside. I had to use a goto to initiate the loop because ARM doesn't do jz in the same way as Intel. It is strangely easier to reverse the flow and jump if *not* zero. 

## hw-rpi3-5

Hello World bypassing clib altogether, and talking direcly to the hardware. Apparently this is a no-no, even if it is theoretically more efficient. The bare-metal and OS dev folk are pretty much limited to using this method until their kernel boots and provides other methods, like those covered already.

# Resources

Since uploading these, I have discovered a few good resources on ARM assembler for the RPI. As I vet them, I'll list them here. For now, here is one that seems to follow a good pocess for learning, and goes more in depth than any of the others I found: https://thinkingeek.com/arm-assembler-raspberry-pi/
