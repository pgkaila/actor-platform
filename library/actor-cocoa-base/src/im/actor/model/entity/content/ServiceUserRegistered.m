//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/entity/content/ServiceUserRegistered.java
//

#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/entity/content/ServiceUserRegistered.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/entity/content/ServiceUserRegistered.h"
#include "java/io/IOException.h"


#line 10
@implementation AMServiceUserRegistered

+ (AMServiceUserRegistered *)fromBytesWithByteArray:(IOSByteArray *)data {
  return AMServiceUserRegistered_fromBytesWithByteArray_(data);
}

- (instancetype)init {
  return
#line 17
  [super initWithNSString:@"User registered"];
}

@end

AMServiceUserRegistered *AMServiceUserRegistered_fromBytesWithByteArray_(IOSByteArray *data) {
  AMServiceUserRegistered_init();
  
#line 13
  return ((AMServiceUserRegistered *) BSBser_parseWithBSBserObject_withByteArray_([[AMServiceUserRegistered alloc] init], data));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMServiceUserRegistered)
