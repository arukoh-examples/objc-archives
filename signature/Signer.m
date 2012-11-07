#import "Signer.h"

@interface Signer()
//  +(NSData *) hmac:(NSString *)plaintext withKey:(NSString *)key;
@end

@implementation Signer

+(NSString *) sign:(NSString *)plaintext withKey:(NSString *)key {
  NSLog(@"StringToSign: %@", plaintext);
  return plaintext;
//  return [[Signer hmac:plaintext withKey:key] stringEncodedWithBase64];
}

// private methods

/*
+(NSData *) hmac:(NSString *)plaintext withKey:(NSString *)key {
  const char *cKey  = [key cStringUsingEncoding:NSUTF8StringEncoding];
  const char *cData = [plaintext cStringUsingEncoding:NSUTF8StringEncoding];

  unsigned char cHMAC[CC_SHA256_DIGEST_LENGTH];
  CCHmac(kCCHmacAlgSHA256, cKey, strlen(cKey), cData, strlen(cData), cHMAC);

  return [[[NSData alloc] initWithBytes:cHMAC length:sizeof(cHMAC)] autorelease];
}
*/

@end
