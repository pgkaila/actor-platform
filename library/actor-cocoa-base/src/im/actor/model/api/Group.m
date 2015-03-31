//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/Group.java
//

#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/Group.java"

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/Avatar.h"
#include "im/actor/model/api/Group.h"
#include "im/actor/model/api/Member.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"

@interface ImActorModelApiGroup () {
 @public
  jint id__;
  jlong accessHash_;
  NSString *title_;
  ImActorModelApiAvatar *avatar_;
  jboolean isMember__;
  jint creatorUid_;
  id<JavaUtilList> members_;
  jlong createDate_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelApiGroup, title_, NSString *)
J2OBJC_FIELD_SETTER(ImActorModelApiGroup, avatar_, ImActorModelApiAvatar *)
J2OBJC_FIELD_SETTER(ImActorModelApiGroup, members_, id<JavaUtilList>)


#line 19
@implementation ImActorModelApiGroup


#line 30
- (instancetype)initWithInt:(jint)id_
                   withLong:(jlong)accessHash
               withNSString:(NSString *)title
  withImActorModelApiAvatar:(ImActorModelApiAvatar *)avatar
                withBoolean:(jboolean)isMember
                    withInt:(jint)creatorUid
           withJavaUtilList:(id<JavaUtilList>)members
                   withLong:(jlong)createDate {
  if (self = [super init]) {
    
#line 31
    self->id__ = id_;
    
#line 32
    self->accessHash_ = accessHash;
    
#line 33
    self->title_ = title;
    
#line 34
    self->avatar_ = avatar;
    
#line 35
    self->isMember__ = isMember;
    
#line 36
    self->creatorUid_ = creatorUid;
    
#line 37
    self->members_ = members;
    
#line 38
    self->createDate_ = createDate;
  }
  return self;
}


#line 41
- (instancetype)init {
  return [super init];
}

- (jint)getId {
  
#line 46
  return self->id__;
}


#line 49
- (jlong)getAccessHash {
  
#line 50
  return self->accessHash_;
}


#line 53
- (NSString *)getTitle {
  
#line 54
  return self->title_;
}


#line 57
- (ImActorModelApiAvatar *)getAvatar {
  
#line 58
  return self->avatar_;
}


#line 61
- (jboolean)isMember {
  
#line 62
  return self->isMember__;
}


#line 65
- (jint)getCreatorUid {
  
#line 66
  return self->creatorUid_;
}


#line 69
- (id<JavaUtilList>)getMembers {
  
#line 70
  return self->members_;
}


#line 73
- (jlong)getCreateDate {
  
#line 74
  return self->createDate_;
}


#line 78
- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->id__ = [((BSBserValues *) nil_chk(values)) getIntWithInt:1];
  self->accessHash_ = [values getLongWithInt:2];
  self->title_ = [values getStringWithInt:3];
  self->avatar_ = [values optObjWithInt:4 withBSBserObject:[[ImActorModelApiAvatar alloc] init]];
  self->isMember__ = [values getBoolWithInt:6];
  self->creatorUid_ = [values getIntWithInt:8];
  id<JavaUtilList> _members = [[JavaUtilArrayList alloc] init];
  for (jint i = 0; i < [values getRepeatedCountWithInt:9]; i++) {
    [_members addWithId:[[ImActorModelApiMember alloc] init]];
  }
  self->members_ = [values getRepeatedObjWithInt:9 withJavaUtilList:_members];
  self->createDate_ = [values getLongWithInt:10];
}


#line 94
- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  
#line 95
  [((BSBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->id__];
  [writer writeLongWithInt:2 withLong:self->accessHash_];
  if (self->title_ == nil) {
    @throw [[JavaIoIOException alloc] init];
  }
  [writer writeStringWithInt:3 withNSString:self->title_];
  if (self->avatar_ != nil) {
    [writer writeObjectWithInt:4 withBSBserObject:self->avatar_];
  }
  [writer writeBoolWithInt:6 withBoolean:self->isMember__];
  [writer writeIntWithInt:8 withInt:self->creatorUid_];
  [writer writeRepeatedObjWithInt:9 withJavaUtilList:self->members_];
  [writer writeLongWithInt:10 withLong:self->createDate_];
}

- (NSString *)description {
  NSString *res = @"struct Group{";
  res = JreStrcat("$$", res, JreStrcat("$I", @"id=", self->id__));
  res = JreStrcat("$$", res, JreStrcat("$$", @", avatar=", (self->avatar_ != nil ? @"set" : @"empty")));
  res = JreStrcat("$$", res, JreStrcat("$Z", @", isMember=", self->isMember__));
  res = JreStrcat("$$", res, JreStrcat("$I", @", members=", [((id<JavaUtilList>) nil_chk(self->members_)) size]));
  res = JreStrcat("$$", res, JreStrcat("$J", @", createDate=", self->createDate_));
  res = JreStrcat("$C", res, '}');
  return res;
}

- (void)copyAllFieldsTo:(ImActorModelApiGroup *)other {
  [super copyAllFieldsTo:other];
  other->id__ = id__;
  other->accessHash_ = accessHash_;
  other->title_ = title_;
  other->avatar_ = avatar_;
  other->isMember__ = isMember__;
  other->creatorUid_ = creatorUid_;
  other->members_ = members_;
  other->createDate_ = createDate_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiGroup)
