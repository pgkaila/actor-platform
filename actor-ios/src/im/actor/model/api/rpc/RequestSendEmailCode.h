//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/rpc/RequestSendEmailCode.java
//

#ifndef _ImActorModelApiRpcRequestSendEmailCode_H_
#define _ImActorModelApiRpcRequestSendEmailCode_H_

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Request.h"

#define ImActorModelApiRpcRequestSendEmailCode_HEADER 120

@interface ImActorModelApiRpcRequestSendEmailCode : ImActorModelNetworkParserRequest {
}

+ (ImActorModelApiRpcRequestSendEmailCode *)fromBytesWithByteArray:(IOSByteArray *)data;

- (instancetype)initWithNSString:(NSString *)email
                    withNSString:(NSString *)description_;

- (instancetype)init;

- (NSString *)getEmail;

- (NSString *)getDescription;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

- (jint)getHeaderKey;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiRpcRequestSendEmailCode)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT ImActorModelApiRpcRequestSendEmailCode *ImActorModelApiRpcRequestSendEmailCode_fromBytesWithByteArray_(IOSByteArray *data);

J2OBJC_STATIC_FIELD_GETTER(ImActorModelApiRpcRequestSendEmailCode, HEADER, jint)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiRpcRequestSendEmailCode)

#endif // _ImActorModelApiRpcRequestSendEmailCode_H_
