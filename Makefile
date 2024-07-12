CC = gcc
CFLAGS = -Wall -std=c17
INCLUDES = -Ilibs/SDL2/include
LIBS = -Llibs/SDL2/lib -lmingw32 -lSDL2main -lSDL2 -lm
OUTFILE = 3dengine

ifeq ($(OS), Windows_NT)
    RM = del
    OUTFILE := $(OUTFILE).exe
else
    RM = rm -f
    INCLUDES =
    LIBS = -lSDL2 -lm
endif

build:
	$(CC) $(CFLAGS) ./src/*.c ${INCLUDES} $(LIBS) -o $(OUTFILE)

clean:
	$(RM) $(OUTFILE)
