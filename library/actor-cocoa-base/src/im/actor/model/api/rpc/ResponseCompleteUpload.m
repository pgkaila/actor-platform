//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/rpc/ResponseCompleteUpload.java
//

#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/rpc/ResponseCompleteUpload.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/FileLocation.h"
#include "im/actor/model/api/rpc/ResponseCompleteUpload.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"

@interface ImActorModelApiRpcResponseCompleteUpload () {
 @public
  ImActorModelApiFileLocation *location_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelApiRpcResponseCompleteUpload, location_, ImActorModelApiFileLocation *)


#line 20
@implementation ImActorModelApiRpcResponseCompleteUpload


#line 23
+ (ImActorModelApiRpcResponseCompleteUpload *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiRpcResponseCompleteUpload_fromBytesWithByteArray_(data);
}


#line 29
- (instancetype)initWithImActorModelApiFileLocation:(ImActorModelApiFileLocation *)location {
  if (self = [super init]) {
    
#line 30
    self->location_ = location;
  }
  return self;
}


#line 33
- (instancetype)init {
  return [super init];
}

- (ImActorModelApiFileLocation *)getLocation {
  
#line 38
  return self->location_;
}


#line 42
- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->location_ = [((BSBserValues *) nil_chk(values)) getObjWithInt:1 withBSBserObject:[[ImActorModelApiFileLocation alloc] init]];
}


#line 47
- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  
#line 48
  if (self->location_ == nil) {
    @throw [[JavaIoIOException alloc] init];
  }
  [((BSBserWriter *) nil_chk(writer)) writeObjectWithInt:1 withBSBserObject:self->location_];
}

- (NSString *)description {
  NSString *res = @"tuple CompleteUpload{";
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  
#line 63
  return ImActorModelApiRpcResponseCompleteUpload_HEADER;
}

- (void)copyAllFieldsTo:(ImActorModelApiRpcResponseCompleteUpload *)other {
  [super copyAllFieldsTo:other];
  other->location_ = location_;
}

@end

ImActorModelApiRpcResponseCompleteUpload *ImActorModelApiRpcResponseCompleteUpload_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiRpcResponseCompleteUpload_init();
  
#line 24
  return ((ImActorModelApiRpcResponseCompleteUpload *) BSBser_parseWithBSBserObject_withByteArray_([[ImActorModelApiRpcResponseCompleteUpload alloc] init], data));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiRpcResponseCompleteUpload)
