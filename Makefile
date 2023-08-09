all: fire

.DUMMY: all clean install

fire: fire.c
	gcc `pkg-config --cflags sdl` -o fire fire.c `pkg-config --libs sdl`

install: fire
	cp fire ${TOARU_SYSROOT}/usr/bin/

clean:
	rm -f fire
