#import <Foundation/NSAutoreleasePool.h>
#import <Foundation/NSString.h>
#import <stdio.h>

int main(int argc, char **argv) {
  NSAutoreleasePool* pool = [[NSAutoreleasePool alloc] init];

  NSString* str = [[NSString alloc] initWithString:@"Hello World\n"];
  printf("%s", [str UTF8String]);

  [pool release];
  return 0;
}
