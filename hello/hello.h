#import <Foundation/NSObject.h>
#import <Foundation/NSString.h>

@interface HelloWorld :NSObject {
  NSString *name;
}

@property (nonatomic, retain) NSString *name;

-(id)init;

-(id)initWithName:(NSString *)theName;

-(void)sayHi;

-(void)sayHi:(NSString *)theName;

@end
