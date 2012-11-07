#import <stdio.h>
#import <Foundation/Foundation.h>
#import <Request.h>

int main(int argc, char **argv) {
  NSAutoreleasePool* pool = [[NSAutoreleasePool alloc] init];

  Request *request = [[Request alloc] init];
  [request setValue:@"GET"       forKey:@"method"];
  [request setValue:@"localhost" forKey:@"host"];
  [request setValue:@"/action"   forKey:@"path"];
  [request.query setObject:@"val2" forKey:@"key2"];
  [request.query setObject:@"val1" forKey:@"key1"];

  NSString *key = @"my_secret";
  NSString* signature = [request sign:key];
  NSLog(@"%@\n", signature);

  [pool release];
  return 0;
}
