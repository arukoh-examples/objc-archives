CFLAGS=$(shell gnustep-config --objc-flags) -lgnustep-base

signature: main.m Request.m Signer.m
	gcc $^ -o $@ $(CFLAGS)

clean:
	@rm -rf signature *.d
