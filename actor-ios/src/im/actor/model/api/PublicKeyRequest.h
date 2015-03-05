//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/PublicKeyRequest.java
//

#ifndef _ImActorModelApiPublicKeyRequest_H_
#define _ImActorModelApiPublicKeyRequest_H_

@class BSBserValues;
@class BSBserWriter;

#include "J2ObjC_header.h"
#include "im/actor/model/droidkit/bser/BserObject.h"

@interface ImActorModelApiPublicKeyRequest : BSBserObject {
}

- (instancetype)initWithInt:(jint)uid
                   withLong:(jlong)accessHash
                   withLong:(jlong)keyHash;

- (instancetype)init;

- (jint)getUid;

- (jlong)getAccessHash;

- (jlong)getKeyHash;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiPublicKeyRequest)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiPublicKeyRequest)

#endif // _ImActorModelApiPublicKeyRequest_H_
