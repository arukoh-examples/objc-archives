#import <Foundation/Foundation.h>
#import "Signer.h"

@interface Request :NSObject {
  NSString *method;
  NSString *host;
  NSString *path;
  NSMutableDictionary *query;
}

@property (nonatomic, retain) NSString *method;
@property (nonatomic, retain) NSString *host;
@property (nonatomic, retain) NSString *path;
@property (nonatomic, retain) NSMutableDictionary *query;

-(id)init;

-(NSString *) sign:(NSString *)key;

@end
