//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/updates/UpdateUserPhoneAdded.java
//

#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/updates/UpdateUserPhoneAdded.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/updates/UpdateUserPhoneAdded.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"

@interface ImActorModelApiUpdatesUpdateUserPhoneAdded () {
 @public
  jint uid_;
  jint phoneId_;
}
@end


#line 20
@implementation ImActorModelApiUpdatesUpdateUserPhoneAdded


#line 23
+ (ImActorModelApiUpdatesUpdateUserPhoneAdded *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiUpdatesUpdateUserPhoneAdded_fromBytesWithByteArray_(data);
}


#line 30
- (instancetype)initWithInt:(jint)uid
                    withInt:(jint)phoneId {
  if (self = [super init]) {
    
#line 31
    self->uid_ = uid;
    
#line 32
    self->phoneId_ = phoneId;
  }
  return self;
}


#line 35
- (instancetype)init {
  return [super init];
}

- (jint)getUid {
  
#line 40
  return self->uid_;
}


#line 43
- (jint)getPhoneId {
  
#line 44
  return self->phoneId_;
}


#line 48
- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->uid_ = [((BSBserValues *) nil_chk(values)) getIntWithInt:1];
  self->phoneId_ = [values getIntWithInt:2];
}


#line 54
- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  
#line 55
  [((BSBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->uid_];
  [writer writeIntWithInt:2 withInt:self->phoneId_];
}

- (NSString *)description {
  NSString *res = @"update UserPhoneAdded{";
  res = JreStrcat("$$", res, JreStrcat("$I", @"uid=", self->uid_));
  res = JreStrcat("$$", res, JreStrcat("$I", @", phoneId=", self->phoneId_));
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  
#line 70
  return ImActorModelApiUpdatesUpdateUserPhoneAdded_HEADER;
}

- (void)copyAllFieldsTo:(ImActorModelApiUpdatesUpdateUserPhoneAdded *)other {
  [super copyAllFieldsTo:other];
  other->uid_ = uid_;
  other->phoneId_ = phoneId_;
}

@end

ImActorModelApiUpdatesUpdateUserPhoneAdded *ImActorModelApiUpdatesUpdateUserPhoneAdded_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiUpdatesUpdateUserPhoneAdded_init();
  
#line 24
  return ((ImActorModelApiUpdatesUpdateUserPhoneAdded *) BSBser_parseWithBSBserObject_withByteArray_([[ImActorModelApiUpdatesUpdateUserPhoneAdded alloc] init], data));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiUpdatesUpdateUserPhoneAdded)
