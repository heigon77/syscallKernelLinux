cmd_drivers/char/built-in.a := echo >/dev/null; rm -f drivers/char/built-in.a; ar cDPrST drivers/char/built-in.a drivers/char/mem.o drivers/char/random.o drivers/char/misc.o drivers/char/virtio_console.o drivers/char/hpet.o drivers/char/nvram.o drivers/char/hw_random/built-in.a drivers/char/agp/built-in.a drivers/char/pcmcia/built-in.a