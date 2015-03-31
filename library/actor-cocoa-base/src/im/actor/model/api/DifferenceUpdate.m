//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/DifferenceUpdate.java
//

#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/DifferenceUpdate.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/DifferenceUpdate.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/droidkit/bser/Utils.h"
#include "java/io/IOException.h"

@interface ImActorModelApiDifferenceUpdate () {
 @public
  jint updateHeader_;
  IOSByteArray *update_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelApiDifferenceUpdate, update_, IOSByteArray *)


#line 19
@implementation ImActorModelApiDifferenceUpdate


#line 24
- (instancetype)initWithInt:(jint)updateHeader
              withByteArray:(IOSByteArray *)update {
  if (self = [super init]) {
    
#line 25
    self->updateHeader_ = updateHeader;
    
#line 26
    self->update_ = update;
  }
  return self;
}


#line 29
- (instancetype)init {
  return [super init];
}

- (jint)getUpdateHeader {
  
#line 34
  return self->updateHeader_;
}


#line 37
- (IOSByteArray *)getUpdate {
  
#line 38
  return self->update_;
}


#line 42
- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->updateHeader_ = [((BSBserValues *) nil_chk(values)) getIntWithInt:1];
  self->update_ = [values getBytesWithInt:2];
}


#line 48
- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  
#line 49
  [((BSBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->updateHeader_];
  if (self->update_ == nil) {
    @throw [[JavaIoIOException alloc] init];
  }
  [writer writeBytesWithInt:2 withByteArray:self->update_];
}

- (NSString *)description {
  NSString *res = @"struct DifferenceUpdate{";
  res = JreStrcat("$$", res, JreStrcat("$I", @"updateHeader=", self->updateHeader_));
  res = JreStrcat("$$", res, JreStrcat("$$", @", update=", BSUtils_byteArrayToStringCompactWithByteArray_(self->update_)));
  res = JreStrcat("$C", res, '}');
  return res;
}

- (void)copyAllFieldsTo:(ImActorModelApiDifferenceUpdate *)other {
  [super copyAllFieldsTo:other];
  other->updateHeader_ = updateHeader_;
  other->update_ = update_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiDifferenceUpdate)
