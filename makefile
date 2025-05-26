CC = gcc-14
CFLAGS = -O3 -fPIC -Wall -fopenmp
LDFLAGS = -shared
TARGET = build/qfstat.so

SRC = src/core.c src/parallel.c src/bindings.c

all: $(TARGET)

$(TARGET): $(SRC)
	mkdir -p build
	$(CC) $(CFLAGS) -Iinclude $(SRC) -o $@ $(LDFLAGS)

clean:
	rm -rf build
