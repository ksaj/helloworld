# Makefile

all: hw-rpi3-1 hw-rpi3-2 hw-rpi3-3 hw-rpi3-4 hw-rpi3-5


hw-rpi3-1: hw-rpi3-1.o
	gcc -o $@ $+

hw-rpi3-1.o : hw-rpi3-1.S
	as -o $@ $<


hw-rpi3-2: hw-rpi3-2.o
	gcc -o $@ $+

hw-rpi3-2.o : hw-rpi3-2.S
	as -o $@ $<


hw-rpi3-3: hw-rpi3-3.o
	gcc -o $@ $+

hw-rpi3-3.o : hw-rpi3-3.S
	as -o $@ $<


hw-rpi3-4: hw-rpi3-4.o
	gcc -o $@ $+

hw-rpi3-4.o : hw-rpi3-4.S
	as -o $@ $<


hw-rpi3-5: hw-rpi3-5.o
	gcc -o $@ $+

hw-rpi3-5.o: hw-rpi3-5.S
	as -o $@ $<


clean:
	rm hw-rpi3-[12345] hw-rpi3-[12345].o

