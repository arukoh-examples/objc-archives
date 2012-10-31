#import "hello.h"

@implementation HelloWorld

@synthesize name;

-(id)init {
  if ((self = [super init])) {
    self.name = nil;
  }
  return self;
}

-(id)initWithName:(NSString *)theName {
  if ((self = [self init])) {
    self.name = theName;
  }
  return self;
}

-(void)sayHi {
  [self sayHi:name];
}

-(void)sayHi:(NSString *)theName {
  printf("Hello %s!\n", [theName UTF8String]);
}

-(void)dealloc {
  [name release];
  [super dealloc];
}

@end
