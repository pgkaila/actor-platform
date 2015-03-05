//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/rpc/ResponseGetDifference.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/DifferenceUpdate.h"
#include "im/actor/model/api/Email.h"
#include "im/actor/model/api/Group.h"
#include "im/actor/model/api/Phone.h"
#include "im/actor/model/api/User.h"
#include "im/actor/model/api/rpc/ResponseGetDifference.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"

@interface ImActorModelApiRpcResponseGetDifference () {
 @public
  jint seq_;
  IOSByteArray *state_;
  id<JavaUtilList> users_;
  id<JavaUtilList> groups_;
  id<JavaUtilList> phones_;
  id<JavaUtilList> emails_;
  id<JavaUtilList> updates_;
  jboolean needMore__;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelApiRpcResponseGetDifference, state_, IOSByteArray *)
J2OBJC_FIELD_SETTER(ImActorModelApiRpcResponseGetDifference, users_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(ImActorModelApiRpcResponseGetDifference, groups_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(ImActorModelApiRpcResponseGetDifference, phones_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(ImActorModelApiRpcResponseGetDifference, emails_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(ImActorModelApiRpcResponseGetDifference, updates_, id<JavaUtilList>)

@implementation ImActorModelApiRpcResponseGetDifference

+ (ImActorModelApiRpcResponseGetDifference *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiRpcResponseGetDifference_fromBytesWithByteArray_(data);
}

- (instancetype)initWithInt:(jint)seq
              withByteArray:(IOSByteArray *)state
           withJavaUtilList:(id<JavaUtilList>)users
           withJavaUtilList:(id<JavaUtilList>)groups
           withJavaUtilList:(id<JavaUtilList>)phones
           withJavaUtilList:(id<JavaUtilList>)emails
           withJavaUtilList:(id<JavaUtilList>)updates
                withBoolean:(jboolean)needMore {
  if (self = [super init]) {
    self->seq_ = seq;
    self->state_ = state;
    self->users_ = users;
    self->groups_ = groups;
    self->phones_ = phones;
    self->emails_ = emails;
    self->updates_ = updates;
    self->needMore__ = needMore;
  }
  return self;
}

- (instancetype)init {
  return [super init];
}

- (jint)getSeq {
  return self->seq_;
}

- (IOSByteArray *)getState {
  return self->state_;
}

- (id<JavaUtilList>)getUsers {
  return self->users_;
}

- (id<JavaUtilList>)getGroups {
  return self->groups_;
}

- (id<JavaUtilList>)getPhones {
  return self->phones_;
}

- (id<JavaUtilList>)getEmails {
  return self->emails_;
}

- (id<JavaUtilList>)getUpdates {
  return self->updates_;
}

- (jboolean)needMore {
  return self->needMore__;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->seq_ = [((BSBserValues *) nil_chk(values)) getIntWithInt:1];
  self->state_ = [values getBytesWithInt:2];
  id<JavaUtilList> _users = [[JavaUtilArrayList alloc] init];
  for (jint i = 0; i < [values getRepeatedCountWithInt:3]; i++) {
    [_users addWithId:[[ImActorModelApiUser alloc] init]];
  }
  self->users_ = [values getRepeatedObjWithInt:3 withJavaUtilList:_users];
  id<JavaUtilList> _groups = [[JavaUtilArrayList alloc] init];
  for (jint i = 0; i < [values getRepeatedCountWithInt:6]; i++) {
    [_groups addWithId:[[ImActorModelApiGroup alloc] init]];
  }
  self->groups_ = [values getRepeatedObjWithInt:6 withJavaUtilList:_groups];
  id<JavaUtilList> _phones = [[JavaUtilArrayList alloc] init];
  for (jint i = 0; i < [values getRepeatedCountWithInt:7]; i++) {
    [_phones addWithId:[[ImActorModelApiPhone alloc] init]];
  }
  self->phones_ = [values getRepeatedObjWithInt:7 withJavaUtilList:_phones];
  id<JavaUtilList> _emails = [[JavaUtilArrayList alloc] init];
  for (jint i = 0; i < [values getRepeatedCountWithInt:8]; i++) {
    [_emails addWithId:[[ImActorModelApiEmail alloc] init]];
  }
  self->emails_ = [values getRepeatedObjWithInt:8 withJavaUtilList:_emails];
  id<JavaUtilList> _updates = [[JavaUtilArrayList alloc] init];
  for (jint i = 0; i < [values getRepeatedCountWithInt:4]; i++) {
    [_updates addWithId:[[ImActorModelApiDifferenceUpdate alloc] init]];
  }
  self->updates_ = [values getRepeatedObjWithInt:4 withJavaUtilList:_updates];
  self->needMore__ = [values getBoolWithInt:5];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->seq_];
  if (self->state_ == nil) {
    @throw [[JavaIoIOException alloc] init];
  }
  [writer writeBytesWithInt:2 withByteArray:self->state_];
  [writer writeRepeatedObjWithInt:3 withJavaUtilList:self->users_];
  [writer writeRepeatedObjWithInt:6 withJavaUtilList:self->groups_];
  [writer writeRepeatedObjWithInt:7 withJavaUtilList:self->phones_];
  [writer writeRepeatedObjWithInt:8 withJavaUtilList:self->emails_];
  [writer writeRepeatedObjWithInt:4 withJavaUtilList:self->updates_];
  [writer writeBoolWithInt:5 withBoolean:self->needMore__];
}

- (NSString *)description {
  NSString *res = @"tuple GetDifference{";
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  return ImActorModelApiRpcResponseGetDifference_HEADER;
}

- (void)copyAllFieldsTo:(ImActorModelApiRpcResponseGetDifference *)other {
  [super copyAllFieldsTo:other];
  other->seq_ = seq_;
  other->state_ = state_;
  other->users_ = users_;
  other->groups_ = groups_;
  other->phones_ = phones_;
  other->emails_ = emails_;
  other->updates_ = updates_;
  other->needMore__ = needMore__;
}

@end

ImActorModelApiRpcResponseGetDifference *ImActorModelApiRpcResponseGetDifference_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiRpcResponseGetDifference_init();
  return ((ImActorModelApiRpcResponseGetDifference *) BSBser_parseWithBSBserObject_withByteArray_([[ImActorModelApiRpcResponseGetDifference alloc] init], data));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiRpcResponseGetDifference)
