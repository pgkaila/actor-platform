//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/rpc/ResponseSeq.java
//

#ifndef _ImActorModelApiRpcResponseSeq_H_
#define _ImActorModelApiRpcResponseSeq_H_

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Response.h"

#define ImActorModelApiRpcResponseSeq_HEADER 72

@interface ImActorModelApiRpcResponseSeq : ImActorModelNetworkParserResponse {
}

+ (ImActorModelApiRpcResponseSeq *)fromBytesWithByteArray:(IOSByteArray *)data;

- (instancetype)initWithInt:(jint)seq
              withByteArray:(IOSByteArray *)state;

- (instancetype)init;

- (jint)getSeq;

- (IOSByteArray *)getState;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

- (jint)getHeaderKey;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiRpcResponseSeq)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT ImActorModelApiRpcResponseSeq *ImActorModelApiRpcResponseSeq_fromBytesWithByteArray_(IOSByteArray *data);

J2OBJC_STATIC_FIELD_GETTER(ImActorModelApiRpcResponseSeq, HEADER, jint)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiRpcResponseSeq)

#endif // _ImActorModelApiRpcResponseSeq_H_
