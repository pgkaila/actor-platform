//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/base/FatSeqUpdate.java
//

#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/base/FatSeqUpdate.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/Email.h"
#include "im/actor/model/api/Group.h"
#include "im/actor/model/api/Phone.h"
#include "im/actor/model/api/User.h"
#include "im/actor/model/api/base/FatSeqUpdate.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/droidkit/bser/Utils.h"
#include "java/io/IOException.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"

@interface ImActorModelApiBaseFatSeqUpdate () {
 @public
  jint seq_;
  IOSByteArray *state_;
  jint updateHeader_;
  IOSByteArray *update_;
  id<JavaUtilList> users_;
  id<JavaUtilList> groups_;
  id<JavaUtilList> phones_;
  id<JavaUtilList> emails_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelApiBaseFatSeqUpdate, state_, IOSByteArray *)
J2OBJC_FIELD_SETTER(ImActorModelApiBaseFatSeqUpdate, update_, IOSByteArray *)
J2OBJC_FIELD_SETTER(ImActorModelApiBaseFatSeqUpdate, users_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(ImActorModelApiBaseFatSeqUpdate, groups_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(ImActorModelApiBaseFatSeqUpdate, phones_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(ImActorModelApiBaseFatSeqUpdate, emails_, id<JavaUtilList>)


#line 20
@implementation ImActorModelApiBaseFatSeqUpdate


#line 23
+ (ImActorModelApiBaseFatSeqUpdate *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiBaseFatSeqUpdate_fromBytesWithByteArray_(data);
}


#line 36
- (instancetype)initWithInt:(jint)seq
              withByteArray:(IOSByteArray *)state
                    withInt:(jint)updateHeader
              withByteArray:(IOSByteArray *)update
           withJavaUtilList:(id<JavaUtilList>)users
           withJavaUtilList:(id<JavaUtilList>)groups
           withJavaUtilList:(id<JavaUtilList>)phones
           withJavaUtilList:(id<JavaUtilList>)emails {
  if (self = [super init]) {
    
#line 37
    self->seq_ = seq;
    
#line 38
    self->state_ = state;
    
#line 39
    self->updateHeader_ = updateHeader;
    
#line 40
    self->update_ = update;
    
#line 41
    self->users_ = users;
    
#line 42
    self->groups_ = groups;
    
#line 43
    self->phones_ = phones;
    
#line 44
    self->emails_ = emails;
  }
  return self;
}


#line 47
- (instancetype)init {
  return [super init];
}

- (jint)getSeq {
  
#line 52
  return self->seq_;
}


#line 55
- (IOSByteArray *)getState {
  
#line 56
  return self->state_;
}


#line 59
- (jint)getUpdateHeader {
  
#line 60
  return self->updateHeader_;
}


#line 63
- (IOSByteArray *)getUpdate {
  
#line 64
  return self->update_;
}


#line 67
- (id<JavaUtilList>)getUsers {
  
#line 68
  return self->users_;
}


#line 71
- (id<JavaUtilList>)getGroups {
  
#line 72
  return self->groups_;
}


#line 75
- (id<JavaUtilList>)getPhones {
  
#line 76
  return self->phones_;
}


#line 79
- (id<JavaUtilList>)getEmails {
  
#line 80
  return self->emails_;
}


#line 84
- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->seq_ = [((BSBserValues *) nil_chk(values)) getIntWithInt:1];
  self->state_ = [values getBytesWithInt:2];
  self->updateHeader_ = [values getIntWithInt:3];
  self->update_ = [values getBytesWithInt:4];
  id<JavaUtilList> _users = [[JavaUtilArrayList alloc] init];
  for (jint i = 0; i < [values getRepeatedCountWithInt:5]; i++) {
    [_users addWithId:[[ImActorModelApiUser alloc] init]];
  }
  self->users_ = [values getRepeatedObjWithInt:5 withJavaUtilList:_users];
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
}


#line 112
- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  
#line 113
  [((BSBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->seq_];
  if (self->state_ == nil) {
    @throw [[JavaIoIOException alloc] init];
  }
  [writer writeBytesWithInt:2 withByteArray:self->state_];
  [writer writeIntWithInt:3 withInt:self->updateHeader_];
  if (self->update_ == nil) {
    @throw [[JavaIoIOException alloc] init];
  }
  [writer writeBytesWithInt:4 withByteArray:self->update_];
  [writer writeRepeatedObjWithInt:5 withJavaUtilList:self->users_];
  [writer writeRepeatedObjWithInt:6 withJavaUtilList:self->groups_];
  [writer writeRepeatedObjWithInt:7 withJavaUtilList:self->phones_];
  [writer writeRepeatedObjWithInt:8 withJavaUtilList:self->emails_];
}

- (NSString *)description {
  NSString *res = @"update box FatSeqUpdate{";
  res = JreStrcat("$$", res, JreStrcat("$I", @"seq=", self->seq_));
  res = JreStrcat("$$", res, JreStrcat("$$", @", state=", BSUtils_byteArrayToStringCompactWithByteArray_(self->state_)));
  res = JreStrcat("$$", res, JreStrcat("$I", @", updateHeader=", self->updateHeader_));
  res = JreStrcat("$$", res, JreStrcat("$$", @", update=", BSUtils_byteArrayToStringCompactWithByteArray_(self->update_)));
  res = JreStrcat("$$", res, JreStrcat("$I", @", users=", [((id<JavaUtilList>) nil_chk(self->users_)) size]));
  res = JreStrcat("$$", res, JreStrcat("$I", @", groups=", [((id<JavaUtilList>) nil_chk(self->groups_)) size]));
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  
#line 144
  return ImActorModelApiBaseFatSeqUpdate_HEADER;
}

- (void)copyAllFieldsTo:(ImActorModelApiBaseFatSeqUpdate *)other {
  [super copyAllFieldsTo:other];
  other->seq_ = seq_;
  other->state_ = state_;
  other->updateHeader_ = updateHeader_;
  other->update_ = update_;
  other->users_ = users_;
  other->groups_ = groups_;
  other->phones_ = phones_;
  other->emails_ = emails_;
}

@end

ImActorModelApiBaseFatSeqUpdate *ImActorModelApiBaseFatSeqUpdate_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiBaseFatSeqUpdate_init();
  
#line 24
  return ((ImActorModelApiBaseFatSeqUpdate *) BSBser_parseWithBSBserObject_withByteArray_([[ImActorModelApiBaseFatSeqUpdate alloc] init], data));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiBaseFatSeqUpdate)
