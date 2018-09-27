all: suresine.cpp
	g++ `pkg-config --cflags --libs libmodbus` suresine.cpp -o suresine && chmod +x suresine
run: suresine
	./suresine
clean: suresine
	rm suresine
