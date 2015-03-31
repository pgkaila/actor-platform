//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/notifications/entity/PendingStorage.java
//

#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/notifications/entity/PendingStorage.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/modules/notifications/entity/PendingNotification.h"
#include "im/actor/model/modules/notifications/entity/PendingStorage.h"
#include "java/io/IOException.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"

@interface ImActorModelModulesNotificationsEntityPendingStorage () {
 @public
  id<JavaUtilList> notifications_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesNotificationsEntityPendingStorage, notifications_, id<JavaUtilList>)


#line 15
@implementation ImActorModelModulesNotificationsEntityPendingStorage

+ (ImActorModelModulesNotificationsEntityPendingStorage *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelModulesNotificationsEntityPendingStorage_fromBytesWithByteArray_(data);
}


#line 23
- (instancetype)init {
  if (self = [super init]) {
    
#line 24
    notifications_ = [[JavaUtilArrayList alloc] init];
  }
  return self;
}


#line 27
- (id<JavaUtilList>)getNotifications {
  
#line 28
  return notifications_;
}


#line 32
- (void)parseWithBSBserValues:(BSBserValues *)values {
  jint count = [((BSBserValues *) nil_chk(values)) getRepeatedCountWithInt:1];
  if (count > 0) {
    JavaUtilArrayList *stubs = [[JavaUtilArrayList alloc] init];
    for (jint i = 0; i < count; i++) {
      [stubs addWithId:[[ImActorModelModulesNotificationsEntityPendingNotification alloc] init]];
    }
    
#line 40
    notifications_ = [values getRepeatedObjWithInt:1 withJavaUtilList:stubs];
  }
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  
#line 46
  [((BSBserWriter *) nil_chk(writer)) writeRepeatedObjWithInt:1 withJavaUtilList:notifications_];
}

- (void)copyAllFieldsTo:(ImActorModelModulesNotificationsEntityPendingStorage *)other {
  [super copyAllFieldsTo:other];
  other->notifications_ = notifications_;
}

@end

ImActorModelModulesNotificationsEntityPendingStorage *ImActorModelModulesNotificationsEntityPendingStorage_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelModulesNotificationsEntityPendingStorage_init();
  
#line 18
  return ((ImActorModelModulesNotificationsEntityPendingStorage *) BSBser_parseWithBSBserObject_withByteArray_([[ImActorModelModulesNotificationsEntityPendingStorage alloc] init], data));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesNotificationsEntityPendingStorage)
