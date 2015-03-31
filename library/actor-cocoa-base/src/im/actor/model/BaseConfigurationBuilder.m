//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/BaseConfigurationBuilder.java
//

#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/BaseConfigurationBuilder.java"

#include "J2ObjC_source.h"
#include "im/actor/model/BaseConfigurationBuilder.h"
#include "im/actor/model/ConfigurationBuilder.h"
#include "im/actor/model/jvm/JavaCryptoProvider.h"
#include "im/actor/model/jvm/JavaThreadingProvider.h"


#line 9
@implementation AMBaseConfigurationBuilder


#line 10
- (instancetype)init {
  if (self = [super init]) {
    
#line 11
    (void) [self setCryptoProvider:[[AMJavaCryptoProvider alloc] init]];
    
#line 12
    (void) [self setThreadingProvider:[[AMJavaThreadingProvider alloc] init]];
  }
  return self;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMBaseConfigurationBuilder)
