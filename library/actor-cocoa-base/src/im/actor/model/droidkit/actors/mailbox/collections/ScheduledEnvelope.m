//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/droidkit/actors/mailbox/collections/ScheduledEnvelope.java
//

#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/droidkit/actors/mailbox/collections/ScheduledEnvelope.java"

#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/actors/mailbox/Envelope.h"
#include "im/actor/model/droidkit/actors/mailbox/collections/ScheduledEnvelope.h"

@interface ImActorModelDroidkitActorsMailboxCollectionsScheduledEnvelope () {
 @public
  jlong key_;
  jlong time_;
  DKEnvelope *envelope_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelDroidkitActorsMailboxCollectionsScheduledEnvelope, envelope_, DKEnvelope *)


#line 8
@implementation ImActorModelDroidkitActorsMailboxCollectionsScheduledEnvelope


#line 13
- (instancetype)initWithLong:(jlong)key
                    withLong:(jlong)time
              withDKEnvelope:(DKEnvelope *)envelope {
  if (self = [super init]) {
    
#line 14
    self->key_ = key;
    
#line 15
    self->time_ = time;
    
#line 16
    self->envelope_ = envelope;
  }
  return self;
}


#line 19
- (jlong)getKey {
  
#line 20
  return key_;
}


#line 23
- (jlong)getTime {
  
#line 24
  return time_;
}


#line 27
- (DKEnvelope *)getEnvelope {
  
#line 28
  return envelope_;
}

- (NSString *)description {
  return JreStrcat("C@C", '<', [((DKEnvelope *) nil_chk(envelope_)) getMessage], '>');
}

- (void)copyAllFieldsTo:(ImActorModelDroidkitActorsMailboxCollectionsScheduledEnvelope *)other {
  [super copyAllFieldsTo:other];
  other->key_ = key_;
  other->time_ = time_;
  other->envelope_ = envelope_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelDroidkitActorsMailboxCollectionsScheduledEnvelope)
