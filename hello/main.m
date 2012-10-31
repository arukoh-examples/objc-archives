#import <stdio.h>
#import <Foundation/NSAutoreleasePool.h>

#import "hello.h"

int main(int argc, char **argv) {
  NSAutoreleasePool* pool = [[NSAutoreleasePool alloc] init];

  NSString *name = (argc >= 2) ? [NSString stringWithFormat:@"%s", argv[1]] : @"Mike";
  [[[HelloWorld alloc] initWithName:name] sayHi];

  [pool release];
  return 0;
}
