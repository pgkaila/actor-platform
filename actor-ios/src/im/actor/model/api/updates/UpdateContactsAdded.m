//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/updates/UpdateContactsAdded.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/updates/UpdateContactsAdded.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"
#include "java/util/List.h"

@interface ImActorModelApiUpdatesUpdateContactsAdded () {
 @public
  id<JavaUtilList> uids_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelApiUpdatesUpdateContactsAdded, uids_, id<JavaUtilList>)

@implementation ImActorModelApiUpdatesUpdateContactsAdded

+ (ImActorModelApiUpdatesUpdateContactsAdded *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiUpdatesUpdateContactsAdded_fromBytesWithByteArray_(data);
}

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)uids {
  if (self = [super init]) {
    self->uids_ = uids;
  }
  return self;
}

- (instancetype)init {
  return [super init];
}

- (id<JavaUtilList>)getUids {
  return self->uids_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->uids_ = [((BSBserValues *) nil_chk(values)) getRepeatedIntWithInt:1];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeRepeatedIntWithInt:1 withJavaUtilList:self->uids_];
}

- (NSString *)description {
  NSString *res = @"update ContactsAdded{";
  res = JreStrcat("$$", res, JreStrcat("$I", @"uids=", [((id<JavaUtilList>) nil_chk(self->uids_)) size]));
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  return ImActorModelApiUpdatesUpdateContactsAdded_HEADER;
}

- (void)copyAllFieldsTo:(ImActorModelApiUpdatesUpdateContactsAdded *)other {
  [super copyAllFieldsTo:other];
  other->uids_ = uids_;
}

@end

ImActorModelApiUpdatesUpdateContactsAdded *ImActorModelApiUpdatesUpdateContactsAdded_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiUpdatesUpdateContactsAdded_init();
  return ((ImActorModelApiUpdatesUpdateContactsAdded *) BSBser_parseWithBSBserObject_withByteArray_([[ImActorModelApiUpdatesUpdateContactsAdded alloc] init], data));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiUpdatesUpdateContactsAdded)
