//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/entity/Contact.java
//

#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/entity/Contact.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserCreator.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/entity/Avatar.h"
#include "im/actor/model/entity/Contact.h"
#include "java/io/IOException.h"

@interface AMContact () {
 @public
  jint uid_;
  jlong sortKey_;
  AMAvatar *avatar_;
  NSString *name_;
}
- (instancetype)init;
@end

J2OBJC_FIELD_SETTER(AMContact, avatar_, AMAvatar *)
J2OBJC_FIELD_SETTER(AMContact, name_, NSString *)

BOOL AMContact_initialized = NO;


#line 15
@implementation AMContact

id<BSBserCreator> AMContact_CREATOR_;


#line 17
+ (AMContact *)fromBytesWithByteArray:(IOSByteArray *)data {
  return AMContact_fromBytesWithByteArray_(data);
}


#line 33
- (instancetype)initWithInt:(jint)uid
                   withLong:(jlong)sortKey
               withAMAvatar:(AMAvatar *)avatar
               withNSString:(NSString *)name {
  if (self = [super init]) {
    
#line 34
    self->uid_ = uid;
    
#line 35
    self->sortKey_ = sortKey;
    
#line 36
    self->avatar_ = avatar;
    
#line 37
    self->name_ = name;
  }
  return self;
}


#line 40
- (instancetype)init {
  return [super init];
}

- (jint)getUid {
  
#line 45
  return uid_;
}


#line 48
- (AMAvatar *)getAvatar {
  
#line 49
  return avatar_;
}


#line 52
- (NSString *)getName {
  
#line 53
  return name_;
}


#line 57
- (void)parseWithBSBserValues:(BSBserValues *)values {
  uid_ = [((BSBserValues *) nil_chk(values)) getIntWithInt:1];
  sortKey_ = [values getLongWithInt:2];
  name_ = [values getStringWithInt:3];
  if ([values optBytesWithInt:4] != nil) {
    avatar_ = AMAvatar_fromBytesWithByteArray_([values getBytesWithInt:4]);
  }
}


#line 67
- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  
#line 68
  [((BSBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:uid_];
  [writer writeLongWithInt:2 withLong:sortKey_];
  [writer writeStringWithInt:3 withNSString:name_];
  if (avatar_ != nil) {
    [writer writeObjectWithInt:4 withBSBserObject:avatar_];
  }
}


#line 77
- (jlong)getEngineId {
  return uid_;
}


#line 82
- (jlong)getEngineSort {
  
#line 83
  return sortKey_;
}


#line 87
- (NSString *)getEngineSearch {
  return name_;
}

- (void)copyAllFieldsTo:(AMContact *)other {
  [super copyAllFieldsTo:other];
  other->uid_ = uid_;
  other->sortKey_ = sortKey_;
  other->avatar_ = avatar_;
  other->name_ = name_;
}

+ (void)initialize {
  if (self == [AMContact class]) {
    AMContact_CREATOR_ =
#line 21
    [[AMContact_$1 alloc] init];
    J2OBJC_SET_INITIALIZED(AMContact)
  }
}

@end

AMContact *AMContact_fromBytesWithByteArray_(IOSByteArray *data) {
  AMContact_init();
  
#line 18
  return ((AMContact *) BSBser_parseWithBSBserObject_withByteArray_([[AMContact alloc] init], data));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMContact)

@implementation AMContact_$1


#line 23
- (AMContact *)createInstance {
  
#line 24
  return [[AMContact alloc] init];
}

- (instancetype)init {
  return [super init];
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMContact_$1)
