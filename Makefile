all: fire

.DUMMY: all clean install

fire: fire.c
	gcc `pkg-config --cflags sdl` -o fire fire.c `pkg-config --libs sdl`

install: fire
	cp fire /usr/bin/firesdl

uninstall:
	rm /usr/bin/firesdl

clean:
	rm -f fire
