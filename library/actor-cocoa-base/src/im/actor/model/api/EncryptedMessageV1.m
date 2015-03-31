//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/EncryptedMessageV1.java
//

#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/EncryptedMessageV1.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/EncryptedContentV1.h"
#include "im/actor/model/api/EncryptedMessageV1.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"

@interface ImActorModelApiEncryptedMessageV1 () {
 @public
  jlong rid_;
  ImActorModelApiEncryptedContentV1 *content_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelApiEncryptedMessageV1, content_, ImActorModelApiEncryptedContentV1 *)


#line 19
@implementation ImActorModelApiEncryptedMessageV1


#line 24
- (instancetype)initWithLong:(jlong)rid
withImActorModelApiEncryptedContentV1:(ImActorModelApiEncryptedContentV1 *)content {
  if (self = [super init]) {
    
#line 25
    self->rid_ = rid;
    
#line 26
    self->content_ = content;
  }
  return self;
}


#line 29
- (instancetype)init {
  return [super init];
}

- (jlong)getRid {
  
#line 34
  return self->rid_;
}


#line 37
- (ImActorModelApiEncryptedContentV1 *)getContent {
  
#line 38
  return self->content_;
}


#line 42
- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->rid_ = [((BSBserValues *) nil_chk(values)) getLongWithInt:1];
  self->content_ = ImActorModelApiEncryptedContentV1_fromBytesWithInt_withByteArray_([values getIntWithInt:2], [values getBytesWithInt:3]);
}


#line 48
- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  
#line 49
  [((BSBserWriter *) nil_chk(writer)) writeLongWithInt:1 withLong:self->rid_];
  if (self->content_ == nil) {
    @throw [[JavaIoIOException alloc] init];
  }
  
#line 54
  [writer writeIntWithInt:2 withInt:[((ImActorModelApiEncryptedContentV1 *) nil_chk(self->content_)) getHeader]];
  [writer writeBytesWithInt:3 withByteArray:[self->content_ toByteArray]];
}

- (NSString *)description {
  
#line 60
  NSString *res = @"struct EncryptedMessageV1{";
  res = JreStrcat("$C", res, '}');
  return res;
}

- (void)copyAllFieldsTo:(ImActorModelApiEncryptedMessageV1 *)other {
  [super copyAllFieldsTo:other];
  other->rid_ = rid_;
  other->content_ = content_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiEncryptedMessageV1)
