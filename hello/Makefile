CFLAGS=$(shell gnustep-config --objc-flags) -lgnustep-base

hello: main.m hello.m
	gcc $^ -o $@ $(CFLAGS)

clean:
	@rm -rf hello *.d
