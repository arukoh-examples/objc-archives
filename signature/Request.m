#import "Request.h"

@interface Request()
  -(NSString *) stringToSign;
  -(NSString *) queryString;
  -(NSString *) urlencode:(NSString *)text;
@end

@implementation Request

@synthesize method;
@synthesize host;
@synthesize path;
@synthesize query;

-(id) init {
  if ((self = [super init])) {
    query = [[NSMutableDictionary alloc] initWithCapacity:1];
  }
  return self;
}

-(NSString *) sign:(NSString *)key {
  return [Signer sign:[self stringToSign] withKey:key];
//  return [NSString stringWithFormat:@"%@,%@", key, ];
}

-(void) dealloc {
  [method release];
  [host   release];
  [path   release];
  [query  release];
  [super dealloc];
}

// private methods

-(NSString *) stringToSign {
  return [NSString stringWithFormat:@"%@\n%@\n%@\n%@",
          [method uppercaseString],
          [host   lowercaseString],
          path,
          [self queryString]];
}

-(NSString *) queryString {
  NSArray *keys = [query allKeys];
  NSArray *sortedKeys = [keys sortedArrayUsingSelector:@selector(compare:)];

  NSMutableArray *mar = [NSMutableArray array];
  for (NSString *key in sortedKeys) {
    NSString *value = [query objectForKey:key];
    [mar addObject:[NSString stringWithFormat:@"%@=%@",
        [self urlencode:key],
        [self urlencode:value]]];
  }
  return [mar componentsJoinedByString:@","];
}

-(NSString *) urlencode:(NSString *)text {
  return [text stringByAddingPercentEscapesUsingEncoding:NSASCIIStringEncoding];
}

@end
