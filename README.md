# helloworld
Hello World, using 6 different methods in Assembler on Raspberry Pi, in varying levels of complexity. Chooose your Linux, and these should work without alteration.

A makefile has been included to simplify compilation. Tested only on Raspberry Pi 3 and 4 (Raspbian) as specified in the source file name, but they should all work on the other models just fine since there isn't anything particularly advanced going on. 

These are all straight up "normal" ways, although each one shows a completely different medhod for getting there. The code is clean and quite straight forward. There are probably better ways to do some of the things I came up with, but this is about doing only one thing - printing "Hello, World!" on its own line. Take it as a challenge, and show me your ideas if you can think of other methods not included here.

## hw-rpi3-1

Hello World using puts(). Notice it doesn't need a carriage return, while the other methods do. The puts() call is rather slobber-proof.

## hw-rpi3-2

Hello World using write(). I suspect this is the more typical method.

## hw-rpi3-3

Hello World using fwrite(). fwrite() is typically used to work with binary data instead of text mode. Of course, ascii is made up of binary, so it works perfectly well for spitting out letters, spaces and punctuation, too.

## hw-rpi3-4

Hello World using putchar(). This is closer to how the computer actually does it deep down inside. I had to use a goto to initiate the loop because ARM doesn't do jz in the same way as Intel. It is strangely easier to reverse the flow and jump if *not* zero. 

## hw-rpi3-5

Hello World bypassing clib altogether. [NOTE: Previous description was incorrect. Updating shortly.]

## hw-rpi4-6

Hello World using printf(). I wrote this on my new rpi4, but it should work on the others, too. This method makes sense when you want to use format strings. Otherwise it is probably overkill. Here we've just used \n for the newline, but with printf you have a whole lot of interesting % variables at your disposal.

# Resources

Since uploading the first bunch of these, I have discovered a few good resources on ARM assembler for the RPI. Here is one that seems to follow a good process for learning, and goes more in depth than any of the others I found: https://thinkingeek.com/arm-assembler-raspberry-pi/
