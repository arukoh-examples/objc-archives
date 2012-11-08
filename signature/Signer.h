#import <Foundation/Foundation.h>
#import <CommonCrypto/CommonHMAC.h>
#import "NSStrinAdditions.h"

@interface Signer :NSObject {
}

+(NSString *) sign:(NSString *)plaintext withKey:(NSString *)key;

@end
