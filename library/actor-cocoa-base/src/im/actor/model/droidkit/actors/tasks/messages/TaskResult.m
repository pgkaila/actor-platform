//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/droidkit/actors/tasks/messages/TaskResult.java
//

#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/droidkit/actors/tasks/messages/TaskResult.java"

#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/actors/tasks/messages/TaskResult.h"

@interface ImActorModelDroidkitActorsTasksMessagesTaskResult () {
 @public
  jint requestId_;
  id res_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelDroidkitActorsTasksMessagesTaskResult, res_, id)


#line 9
@implementation ImActorModelDroidkitActorsTasksMessagesTaskResult


#line 13
- (instancetype)initWithInt:(jint)requestId
                     withId:(id)res {
  if (self = [super init]) {
    
#line 14
    self->requestId_ = requestId;
    
#line 15
    self->res_ = res;
  }
  return self;
}


#line 18
- (id)getRes {
  
#line 19
  return res_;
}


#line 22
- (jint)getRequestId {
  
#line 23
  return requestId_;
}

- (NSString *)description {
  return JreStrcat("$IC", @"TaskResult{requestId=",
#line 29
  requestId_, '}');
}

- (void)copyAllFieldsTo:(ImActorModelDroidkitActorsTasksMessagesTaskResult *)other {
  [super copyAllFieldsTo:other];
  other->requestId_ = requestId_;
  other->res_ = res_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelDroidkitActorsTasksMessagesTaskResult)
