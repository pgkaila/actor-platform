//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/network/api/ApiBroker.java
//

#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/network/api/ApiBroker.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/NetworkProvider.h"
#include "im/actor/model/api/parser/RpcParser.h"
#include "im/actor/model/droidkit/actors/Actor.h"
#include "im/actor/model/droidkit/actors/ActorRef.h"
#include "im/actor/model/droidkit/actors/ActorSystem.h"
#include "im/actor/model/droidkit/actors/Environment.h"
#include "im/actor/model/droidkit/actors/Props.h"
#include "im/actor/model/log/Log.h"
#include "im/actor/model/network/ActorApiCallback.h"
#include "im/actor/model/network/AuthKeyStorage.h"
#include "im/actor/model/network/Endpoints.h"
#include "im/actor/model/network/RpcCallback.h"
#include "im/actor/model/network/RpcException.h"
#include "im/actor/model/network/RpcInternalException.h"
#include "im/actor/model/network/api/ApiBroker.h"
#include "im/actor/model/network/mtp/AuthIdRetriever.h"
#include "im/actor/model/network/mtp/MTProto.h"
#include "im/actor/model/network/mtp/entity/ProtoSerializer.h"
#include "im/actor/model/network/mtp/entity/ProtoStruct.h"
#include "im/actor/model/network/mtp/entity/rpc/Push.h"
#include "im/actor/model/network/mtp/entity/rpc/RpcError.h"
#include "im/actor/model/network/mtp/entity/rpc/RpcFloodWait.h"
#include "im/actor/model/network/mtp/entity/rpc/RpcInternalError.h"
#include "im/actor/model/network/mtp/entity/rpc/RpcOk.h"
#include "im/actor/model/network/mtp/entity/rpc/RpcRequest.h"
#include "im/actor/model/network/parser/Request.h"
#include "im/actor/model/network/parser/Response.h"
#include "im/actor/model/network/parser/RpcScope.h"
#include "im/actor/model/util/AtomicLongCompat.h"
#include "java/io/IOException.h"
#include "java/lang/Long.h"
#include "java/util/Collection.h"
#include "java/util/HashMap.h"
#include "java/util/Random.h"

__attribute__((unused)) static void ImActorModelNetworkApiApiBroker_requestAuthId(ImActorModelNetworkApiApiBroker *self);
__attribute__((unused)) static void ImActorModelNetworkApiApiBroker_createMtProtoWithLong_(ImActorModelNetworkApiApiBroker *self, jlong key);
__attribute__((unused)) static void ImActorModelNetworkApiApiBroker_performRequestWithLong_withImActorModelNetworkParserRequest_withAMRpcCallback_(ImActorModelNetworkApiApiBroker *self, jlong randomId, ImActorModelNetworkParserRequest *message, id<AMRpcCallback> callback);
__attribute__((unused)) static void ImActorModelNetworkApiApiBroker_processResponseWithLong_withByteArray_(ImActorModelNetworkApiApiBroker *self, jlong mid, IOSByteArray *content);
__attribute__((unused)) static void ImActorModelNetworkApiApiBroker_forceResendWithLong_(ImActorModelNetworkApiApiBroker *self, jlong randomId);
__attribute__((unused)) static void ImActorModelNetworkApiApiBroker_cancelRequestWithLong_(ImActorModelNetworkApiApiBroker *self, jlong randomId);
__attribute__((unused)) static void ImActorModelNetworkApiApiBroker_processUpdateWithByteArray_(ImActorModelNetworkApiApiBroker *self, IOSByteArray *content);

@interface ImActorModelNetworkApiApiBroker () {
 @public
  AMEndpoints *endpoints_;
  id<AMAuthKeyStorage> keyStorage_;
  id<AMActorApiCallback> callback_;
  JavaUtilHashMap *requests_;
  JavaUtilHashMap *idMap_;
  MTMTProto *proto_;
  id<AMNetworkProvider> networkProvider_;
}

- (void)requestAuthId;

- (void)createMtProtoWithLong:(jlong)key;

- (void)performRequestWithLong:(jlong)randomId
withImActorModelNetworkParserRequest:(ImActorModelNetworkParserRequest *)message
             withAMRpcCallback:(id<AMRpcCallback>)callback;

- (void)processResponseWithLong:(jlong)mid
                  withByteArray:(IOSByteArray *)content;

- (void)forceResendWithLong:(jlong)randomId;

- (void)cancelRequestWithLong:(jlong)randomId;

- (void)processUpdateWithByteArray:(IOSByteArray *)content;
@end

J2OBJC_FIELD_SETTER(ImActorModelNetworkApiApiBroker, endpoints_, AMEndpoints *)
J2OBJC_FIELD_SETTER(ImActorModelNetworkApiApiBroker, keyStorage_, id<AMAuthKeyStorage>)
J2OBJC_FIELD_SETTER(ImActorModelNetworkApiApiBroker, callback_, id<AMActorApiCallback>)
J2OBJC_FIELD_SETTER(ImActorModelNetworkApiApiBroker, requests_, JavaUtilHashMap *)
J2OBJC_FIELD_SETTER(ImActorModelNetworkApiApiBroker, idMap_, JavaUtilHashMap *)
J2OBJC_FIELD_SETTER(ImActorModelNetworkApiApiBroker, proto_, MTMTProto *)
J2OBJC_FIELD_SETTER(ImActorModelNetworkApiApiBroker, networkProvider_, id<AMNetworkProvider>)

@interface ImActorModelNetworkApiApiBroker_PerformRequest () {
 @public
  ImActorModelNetworkParserRequest *message_;
  id<AMRpcCallback> callback_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelNetworkApiApiBroker_PerformRequest, message_, ImActorModelNetworkParserRequest *)
J2OBJC_FIELD_SETTER(ImActorModelNetworkApiApiBroker_PerformRequest, callback_, id<AMRpcCallback>)

@interface ImActorModelNetworkApiApiBroker_CancelRequest () {
 @public
  jlong randomId_;
}
@end

@interface ImActorModelNetworkApiApiBroker_InitMTProto () {
 @public
  jlong authId_;
}
@end

@interface ImActorModelNetworkApiApiBroker_ProtoResponse () {
 @public
  jlong responseId_;
  IOSByteArray *data_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelNetworkApiApiBroker_ProtoResponse, data_, IOSByteArray *)

@interface ImActorModelNetworkApiApiBroker_ProtoUpdate () {
 @public
  IOSByteArray *data_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelNetworkApiApiBroker_ProtoUpdate, data_, IOSByteArray *)

@interface ImActorModelNetworkApiApiBroker_ForceResend () {
 @public
  jlong id__;
}
@end

@interface ImActorModelNetworkApiApiBroker_RequestHolder () {
 @public
  MTRpcRequest *message_;
  jlong publicId_;
  id<AMRpcCallback> callback_;
  jlong protoId_;
}
- (instancetype)initWithImActorModelNetworkApiApiBroker:(ImActorModelNetworkApiApiBroker *)outer$
                                               withLong:(jlong)publicId
                                       withMTRpcRequest:(MTRpcRequest *)message
                                      withAMRpcCallback:(id<AMRpcCallback>)callback;
@end

J2OBJC_FIELD_SETTER(ImActorModelNetworkApiApiBroker_RequestHolder, message_, MTRpcRequest *)
J2OBJC_FIELD_SETTER(ImActorModelNetworkApiApiBroker_RequestHolder, callback_, id<AMRpcCallback>)

@interface ImActorModelNetworkApiApiBroker_$1 () {
 @public
  AMEndpoints *val$endpoints_;
  id<AMAuthKeyStorage> val$keyStorage_;
  id<AMActorApiCallback> val$callback_;
  id<AMNetworkProvider> val$networkProvider_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelNetworkApiApiBroker_$1, val$endpoints_, AMEndpoints *)
J2OBJC_FIELD_SETTER(ImActorModelNetworkApiApiBroker_$1, val$keyStorage_, id<AMAuthKeyStorage>)
J2OBJC_FIELD_SETTER(ImActorModelNetworkApiApiBroker_$1, val$callback_, id<AMActorApiCallback>)
J2OBJC_FIELD_SETTER(ImActorModelNetworkApiApiBroker_$1, val$networkProvider_, id<AMNetworkProvider>)

@interface ImActorModelNetworkApiApiBroker_$2 () {
 @public
  ImActorModelNetworkApiApiBroker *this$0_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelNetworkApiApiBroker_$2, this$0_, ImActorModelNetworkApiApiBroker *)

@interface ImActorModelNetworkApiApiBroker_$3 () {
 @public
  ImActorModelNetworkApiApiBroker *this$0_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelNetworkApiApiBroker_$3, this$0_, ImActorModelNetworkApiApiBroker *)

BOOL ImActorModelNetworkApiApiBroker_initialized = NO;


#line 41
@implementation ImActorModelNetworkApiApiBroker

NSString * ImActorModelNetworkApiApiBroker_TAG_ = 
#line 53
@"ApiBroker";
AMAtomicLongCompat * ImActorModelNetworkApiApiBroker_NEXT_RPC_ID_;


#line 43
+ (DKActorRef *)getWithAMEndpoints:(AMEndpoints *)endpoints
              withAMAuthKeyStorage:(id<AMAuthKeyStorage>)keyStorage
            withAMActorApiCallback:(id<AMActorApiCallback>)callback
             withAMNetworkProvider:(id<AMNetworkProvider>)networkProvider {
  return ImActorModelNetworkApiApiBroker_getWithAMEndpoints_withAMAuthKeyStorage_withAMActorApiCallback_withAMNetworkProvider_(endpoints, keyStorage, callback, networkProvider);
}


#line 67
- (instancetype)initWithAMEndpoints:(AMEndpoints *)endpoints
               withAMAuthKeyStorage:(id<AMAuthKeyStorage>)keyStorage
             withAMActorApiCallback:(id<AMActorApiCallback>)callback
              withAMNetworkProvider:(id<AMNetworkProvider>)networkProvider {
  if (self = [super init]) {
    requests_ =
#line 60
    [[JavaUtilHashMap alloc] init];
    idMap_ =
#line 61
    [[JavaUtilHashMap alloc] init];
    
#line 69
    self->endpoints_ = endpoints;
    
#line 70
    self->keyStorage_ = keyStorage;
    
#line 71
    self->callback_ = callback;
    
#line 72
    self->networkProvider_ = networkProvider;
  }
  return self;
}


#line 76
- (void)preStart {
  
#line 77
  if ([((id<AMAuthKeyStorage>) nil_chk(keyStorage_)) getAuthKey] == 0) {
    [((DKActorRef *) nil_chk([self self__])) sendWithId:[[ImActorModelNetworkApiApiBroker_RequestAuthId alloc] initWithImActorModelNetworkApiApiBroker:self]];
  }
  else {
    
#line 80
    AMLog_dWithNSString_withNSString_(ImActorModelNetworkApiApiBroker_TAG_, JreStrcat("$J", @"Key loaded: ", [keyStorage_ getAuthKey]));
    [((DKActorRef *) nil_chk([self self__])) sendWithId:[[ImActorModelNetworkApiApiBroker_InitMTProto alloc] initWithImActorModelNetworkApiApiBroker:self withLong:[keyStorage_ getAuthKey]]];
  }
}


#line 86
- (void)onReceiveWithId:(id)message {
  
#line 87
  if ([message isKindOfClass:[ImActorModelNetworkApiApiBroker_RequestAuthId class]]) {
    ImActorModelNetworkApiApiBroker_requestAuthId(self);
  }
  else
#line 89
  if ([message isKindOfClass:[ImActorModelNetworkApiApiBroker_InitMTProto class]]) {
    ImActorModelNetworkApiApiBroker_createMtProtoWithLong_(self, [((ImActorModelNetworkApiApiBroker_InitMTProto *) nil_chk(((ImActorModelNetworkApiApiBroker_InitMTProto *) check_class_cast(message, [ImActorModelNetworkApiApiBroker_InitMTProto class])))) getAuthId]);
  }
  else
#line 91
  if ([message isKindOfClass:[ImActorModelNetworkApiApiBroker_PerformRequest class]]) {
    ImActorModelNetworkApiApiBroker_performRequestWithLong_withImActorModelNetworkParserRequest_withAMRpcCallback_(self,
#line 93
    [((AMAtomicLongCompat *) nil_chk(ImActorModelNetworkApiApiBroker_NEXT_RPC_ID_)) getAndIncrement],
#line 94
    [((ImActorModelNetworkApiApiBroker_PerformRequest *) nil_chk(((ImActorModelNetworkApiApiBroker_PerformRequest *) check_class_cast(message, [ImActorModelNetworkApiApiBroker_PerformRequest class])))) getMessage],
#line 95
    [((ImActorModelNetworkApiApiBroker_PerformRequest *) nil_chk(((ImActorModelNetworkApiApiBroker_PerformRequest *) check_class_cast(message, [ImActorModelNetworkApiApiBroker_PerformRequest class])))) getCallback]);
  }
  else
#line 96
  if ([message isKindOfClass:[ImActorModelNetworkApiApiBroker_CancelRequest class]]) {
    ImActorModelNetworkApiApiBroker_cancelRequestWithLong_(self, [((ImActorModelNetworkApiApiBroker_CancelRequest *) nil_chk(((ImActorModelNetworkApiApiBroker_CancelRequest *) check_class_cast(message, [ImActorModelNetworkApiApiBroker_CancelRequest class])))) getRandomId]);
  }
  else
#line 98
  if ([message isKindOfClass:[ImActorModelNetworkApiApiBroker_ProtoResponse class]]) {
    ImActorModelNetworkApiApiBroker_processResponseWithLong_withByteArray_(self, [((ImActorModelNetworkApiApiBroker_ProtoResponse *) nil_chk(((ImActorModelNetworkApiApiBroker_ProtoResponse *) check_class_cast(message, [ImActorModelNetworkApiApiBroker_ProtoResponse class])))) getResponseId], [((ImActorModelNetworkApiApiBroker_ProtoResponse *) nil_chk(((ImActorModelNetworkApiApiBroker_ProtoResponse *) check_class_cast(message, [ImActorModelNetworkApiApiBroker_ProtoResponse class])))) getData]);
  }
  else
#line 100
  if ([message isKindOfClass:[ImActorModelNetworkApiApiBroker_ForceResend class]]) {
    ImActorModelNetworkApiApiBroker_forceResendWithLong_(self, ((ImActorModelNetworkApiApiBroker_ForceResend *) nil_chk(((ImActorModelNetworkApiApiBroker_ForceResend *) check_class_cast(message, [ImActorModelNetworkApiApiBroker_ForceResend class]))))->id__);
  }
  else
#line 102
  if ([message isKindOfClass:[ImActorModelNetworkApiApiBroker_ProtoUpdate class]]) {
    ImActorModelNetworkApiApiBroker_processUpdateWithByteArray_(self, [((ImActorModelNetworkApiApiBroker_ProtoUpdate *) nil_chk(((ImActorModelNetworkApiApiBroker_ProtoUpdate *) check_class_cast(message, [ImActorModelNetworkApiApiBroker_ProtoUpdate class])))) getData]);
  }
}


#line 107
- (void)requestAuthId {
  ImActorModelNetworkApiApiBroker_requestAuthId(self);
}


#line 126
- (void)createMtProtoWithLong:(jlong)key {
  ImActorModelNetworkApiApiBroker_createMtProtoWithLong_(self, key);
}


#line 158
- (void)performRequestWithLong:(jlong)randomId
withImActorModelNetworkParserRequest:(ImActorModelNetworkParserRequest *)message
             withAMRpcCallback:(id<AMRpcCallback>)callback {
  ImActorModelNetworkApiApiBroker_performRequestWithLong_withImActorModelNetworkParserRequest_withAMRpcCallback_(self, randomId, message, callback);
}


#line 175
- (void)processResponseWithLong:(jlong)mid
                  withByteArray:(IOSByteArray *)content {
  ImActorModelNetworkApiApiBroker_processResponseWithLong_withByteArray_(self, mid, content);
}


#line 252
- (void)forceResendWithLong:(jlong)randomId {
  ImActorModelNetworkApiApiBroker_forceResendWithLong_(self, randomId);
}


#line 263
- (void)cancelRequestWithLong:(jlong)randomId {
  ImActorModelNetworkApiApiBroker_cancelRequestWithLong_(self, randomId);
}


#line 274
- (void)processUpdateWithByteArray:(IOSByteArray *)content {
  ImActorModelNetworkApiApiBroker_processUpdateWithByteArray_(self, content);
}

- (void)copyAllFieldsTo:(ImActorModelNetworkApiApiBroker *)other {
  [super copyAllFieldsTo:other];
  other->endpoints_ = endpoints_;
  other->keyStorage_ = keyStorage_;
  other->callback_ = callback_;
  other->requests_ = requests_;
  other->idMap_ = idMap_;
  other->proto_ = proto_;
  other->networkProvider_ = networkProvider_;
}

+ (void)initialize {
  if (self == [ImActorModelNetworkApiApiBroker class]) {
    ImActorModelNetworkApiApiBroker_NEXT_RPC_ID_ = DKEnvironment_createAtomicLongWithLong_(
#line 54
    1);
    J2OBJC_SET_INITIALIZED(ImActorModelNetworkApiApiBroker)
  }
}

@end

DKActorRef *ImActorModelNetworkApiApiBroker_getWithAMEndpoints_withAMAuthKeyStorage_withAMActorApiCallback_withAMNetworkProvider_(AMEndpoints *endpoints, id<AMAuthKeyStorage> keyStorage, id<AMActorApiCallback> callback, id<AMNetworkProvider> networkProvider) {
  ImActorModelNetworkApiApiBroker_init();
  
#line 45
  return [((DKActorSystem *) nil_chk(DKActorSystem_system())) actorOfWithDKProps:DKProps_createWithIOSClass_withDKActorCreator_(ImActorModelNetworkApiApiBroker_class_(), [[ImActorModelNetworkApiApiBroker_$1 alloc] initWithAMEndpoints:endpoints withAMAuthKeyStorage:keyStorage withAMActorApiCallback:callback withAMNetworkProvider:networkProvider]) withNSString:
#line 50
  @"api/broker"];
}

void ImActorModelNetworkApiApiBroker_requestAuthId(ImActorModelNetworkApiApiBroker *self) {
  
#line 108
  AMLog_dWithNSString_withNSString_(ImActorModelNetworkApiApiBroker_TAG_, @"Creating auth key...");
  
#line 110
  MTAuthIdRetriever_requestAuthIdWithAMEndpoints_withAMNetworkProvider_withMTAuthIdRetriever_AuthIdCallback_(self->endpoints_, self->networkProvider_, [[ImActorModelNetworkApiApiBroker_$2 alloc] initWithImActorModelNetworkApiApiBroker:self]);
}

void ImActorModelNetworkApiApiBroker_createMtProtoWithLong_(ImActorModelNetworkApiApiBroker *self, jlong key) {
  
#line 127
  AMLog_dWithNSString_withNSString_(ImActorModelNetworkApiApiBroker_TAG_, @"Creating proto");
  [((id<AMAuthKeyStorage>) nil_chk(self->keyStorage_)) saveAuthKeyWithLong:key];
  self->proto_ = [[MTMTProto alloc] initWithLong:key withLong:[((JavaUtilRandom *) [[JavaUtilRandom alloc] init]) nextLong] withAMEndpoints:self->endpoints_ withMTMTProtoCallback:[[ImActorModelNetworkApiApiBroker_$3 alloc] initWithImActorModelNetworkApiApiBroker:self] withAMNetworkProvider:self->networkProvider_];
  
#line 151
  for (ImActorModelNetworkApiApiBroker_RequestHolder * __strong holder in nil_chk([((JavaUtilHashMap *) nil_chk(self->requests_)) values])) {
    ((ImActorModelNetworkApiApiBroker_RequestHolder *) nil_chk(holder))->protoId_ = [self->proto_ sendRpcMessageWithMTProtoStruct:holder->message_];
    (void) [((JavaUtilHashMap *) nil_chk(self->idMap_)) putWithId:JavaLangLong_valueOfWithLong_(holder->protoId_) withId:JavaLangLong_valueOfWithLong_(holder->publicId_)];
  }
}

void ImActorModelNetworkApiApiBroker_performRequestWithLong_withImActorModelNetworkParserRequest_withAMRpcCallback_(ImActorModelNetworkApiApiBroker *self, jlong randomId, ImActorModelNetworkParserRequest *message, id<AMRpcCallback> callback) {
  
#line 159
  AMLog_dWithNSString_withNSString_(ImActorModelNetworkApiApiBroker_TAG_, JreStrcat("$J$@", @"-> request#", randomId, @": ", message));
  
#line 161
  ImActorModelNetworkApiApiBroker_RequestHolder *holder = [[ImActorModelNetworkApiApiBroker_RequestHolder alloc] initWithImActorModelNetworkApiApiBroker:self withLong:
#line 162
  randomId withMTRpcRequest:
#line 163
  [[MTRpcRequest alloc] initWithInt:[((ImActorModelNetworkParserRequest *) nil_chk(message)) getHeaderKey] withByteArray:[message toByteArray]] withAMRpcCallback:
#line 164
  callback];
  (void) [((JavaUtilHashMap *) nil_chk(self->requests_)) putWithId:JavaLangLong_valueOfWithLong_(holder->publicId_) withId:holder];
  
#line 167
  if (self->proto_ != nil) {
    jlong mid = [self->proto_ sendRpcMessageWithMTProtoStruct:holder->message_];
    holder->protoId_ = mid;
    (void) [((JavaUtilHashMap *) nil_chk(self->idMap_)) putWithId:JavaLangLong_valueOfWithLong_(mid) withId:JavaLangLong_valueOfWithLong_(randomId)];
  }
}

void ImActorModelNetworkApiApiBroker_processResponseWithLong_withByteArray_(ImActorModelNetworkApiApiBroker *self, jlong mid, IOSByteArray *content) {
  
#line 176
  MTProtoStruct *protoStruct;
  @try {
    protoStruct = MTProtoSerializer_readRpcResponsePayloadWithByteArray_(content);
  }
  @catch (
#line 179
  JavaIoIOException *e) {
    [((JavaIoIOException *) nil_chk(e)) printStackTrace];
    AMLog_wWithNSString_withNSString_(ImActorModelNetworkApiApiBroker_TAG_, JreStrcat("$J", @"Broken response mid#", mid));
    return;
  }
  
#line 187
  jlong rid;
  if ([((JavaUtilHashMap *) nil_chk(self->idMap_)) containsKeyWithId:JavaLangLong_valueOfWithLong_(mid)]) {
    rid = [((JavaLangLong *) nil_chk([self->idMap_ getWithId:JavaLangLong_valueOfWithLong_(mid)])) longLongValue];
  }
  else {
    
#line 191
    return;
  }
  
#line 194
  ImActorModelNetworkApiApiBroker_RequestHolder *holder;
  if ([((JavaUtilHashMap *) nil_chk(self->requests_)) containsKeyWithId:JavaLangLong_valueOfWithLong_(rid)]) {
    holder = [self->requests_ getWithId:JavaLangLong_valueOfWithLong_(rid)];
  }
  else {
    
#line 198
    return;
  }
  
#line 201
  if ([protoStruct isKindOfClass:[MTRpcOk class]]) {
    MTRpcOk *ok = (MTRpcOk *) check_class_cast(protoStruct, [MTRpcOk class]);
    (void) [self->requests_ removeWithId:JavaLangLong_valueOfWithLong_(rid)];
    if (((ImActorModelNetworkApiApiBroker_RequestHolder *) nil_chk(holder))->protoId_ != 0) {
      (void) [self->idMap_ removeWithId:JavaLangLong_valueOfWithLong_(holder->protoId_)];
    }
    
#line 208
    ImActorModelNetworkParserResponse *response;
    @try {
      response = (ImActorModelNetworkParserResponse *) check_class_cast([((ImActorModelApiParserRpcParser *) [[ImActorModelApiParserRpcParser alloc] init]) readWithInt:((MTRpcOk *) nil_chk(ok))->responseType_ withByteArray:ok->payload_], [ImActorModelNetworkParserResponse class]);
    }
    @catch (
#line 211
    JavaIoIOException *e) {
      [((JavaIoIOException *) nil_chk(e)) printStackTrace];
      return;
    }
    
#line 216
    AMLog_dWithNSString_withNSString_(ImActorModelNetworkApiApiBroker_TAG_, JreStrcat("$J$@", @"<- response#", holder->publicId_, @": ", response));
    
#line 218
    [((id<AMRpcCallback>) nil_chk(holder->callback_)) onResultWithImActorModelNetworkParserResponse:response];
  }
  else
#line 219
  if ([protoStruct isKindOfClass:[MTRpcError class]]) {
    MTRpcError *e = (MTRpcError *) check_class_cast(protoStruct, [MTRpcError class]);
    (void) [self->requests_ removeWithId:JavaLangLong_valueOfWithLong_(rid)];
    if (((ImActorModelNetworkApiApiBroker_RequestHolder *) nil_chk(holder))->protoId_ != 0) {
      (void) [self->idMap_ removeWithId:JavaLangLong_valueOfWithLong_(holder->protoId_)];
    }
    
#line 226
    AMLog_wWithNSString_withNSString_(ImActorModelNetworkApiApiBroker_TAG_, JreStrcat("$J$$CIC$", @"<- error#", holder->publicId_, @": ", ((MTRpcError *) nil_chk(e))->errorTag_, ' ', e->errorCode_, ' ', e->userMessage_));
    
#line 228
    [((id<AMRpcCallback>) nil_chk(holder->callback_)) onErrorWithAMRpcException:[[AMRpcException alloc] initWithNSString:e->errorTag_ withInt:e->errorCode_ withNSString:e->userMessage_ withBoolean:e->canTryAgain_ withByteArray:e->relatedData_]];
  }
  else
#line 229
  if ([protoStruct isKindOfClass:[MTRpcInternalError class]]) {
    MTRpcInternalError *e = ((MTRpcInternalError *) check_class_cast(protoStruct, [MTRpcInternalError class]));
    
#line 232
    AMLog_dWithNSString_withNSString_(ImActorModelNetworkApiApiBroker_TAG_, JreStrcat("$J", @"<- internal_error#", ((ImActorModelNetworkApiApiBroker_RequestHolder *) nil_chk(holder))->publicId_));
    
#line 234
    if ([((MTRpcInternalError *) nil_chk(e)) isCanTryAgain]) {
      [((DKActorRef *) nil_chk([self self__])) sendWithId:[[ImActorModelNetworkApiApiBroker_ForceResend alloc] initWithImActorModelNetworkApiApiBroker:self withLong:rid] withLong:[e getTryAgainDelay] * 1000LL];
    }
    else {
      
#line 237
      (void) [self->requests_ removeWithId:JavaLangLong_valueOfWithLong_(rid)];
      if (holder->protoId_ != 0) {
        (void) [self->idMap_ removeWithId:JavaLangLong_valueOfWithLong_(holder->protoId_)];
      }
      [((id<AMRpcCallback>) nil_chk(holder->callback_)) onErrorWithAMRpcException:[[AMRpcInternalException alloc] init]];
    }
  }
  else
#line 243
  if ([protoStruct isKindOfClass:[MTRpcFloodWait class]]) {
    MTRpcFloodWait *f = (MTRpcFloodWait *) check_class_cast(protoStruct, [MTRpcFloodWait class]);
    AMLog_dWithNSString_withNSString_(ImActorModelNetworkApiApiBroker_TAG_, JreStrcat("$JCI$", @"<- flood_wait#", ((ImActorModelNetworkApiApiBroker_RequestHolder *) nil_chk(holder))->publicId_, ' ', [((MTRpcFloodWait *) nil_chk(f)) getDelay], @" sec"));
    [((DKActorRef *) nil_chk([self self__])) sendWithId:[[ImActorModelNetworkApiApiBroker_ForceResend alloc] initWithImActorModelNetworkApiApiBroker:self withLong:rid] withLong:[f getDelay] * 1000LL];
  }
  else {
  }
}

void ImActorModelNetworkApiApiBroker_forceResendWithLong_(ImActorModelNetworkApiApiBroker *self, jlong randomId) {
  
#line 253
  ImActorModelNetworkApiApiBroker_RequestHolder *holder = [((JavaUtilHashMap *) nil_chk(self->requests_)) getWithId:JavaLangLong_valueOfWithLong_(randomId)];
  if (holder != nil) {
    if (holder->protoId_ != 0) {
      (void) [((JavaUtilHashMap *) nil_chk(self->idMap_)) removeWithId:JavaLangLong_valueOfWithLong_(holder->protoId_)];
      [((MTMTProto *) nil_chk(self->proto_)) cancelRpcWithLong:holder->protoId_];
    }
    [((MTMTProto *) nil_chk(self->proto_)) sendRpcMessageWithMTProtoStruct:holder->message_];
  }
}

void ImActorModelNetworkApiApiBroker_cancelRequestWithLong_(ImActorModelNetworkApiApiBroker *self, jlong randomId) {
  
#line 264
  ImActorModelNetworkApiApiBroker_RequestHolder *holder = [((JavaUtilHashMap *) nil_chk(self->requests_)) getWithId:JavaLangLong_valueOfWithLong_(randomId)];
  if (holder != nil) {
    (void) [self->requests_ removeWithId:JavaLangLong_valueOfWithLong_(randomId)];
    if (holder->protoId_ != 0 && self->proto_ != nil) {
      (void) [((JavaUtilHashMap *) nil_chk(self->idMap_)) removeWithId:JavaLangLong_valueOfWithLong_(holder->protoId_)];
      [self->proto_ cancelRpcWithLong:holder->protoId_];
    }
  }
}

void ImActorModelNetworkApiApiBroker_processUpdateWithByteArray_(ImActorModelNetworkApiApiBroker *self, IOSByteArray *content) {
  
#line 275
  MTProtoStruct *protoStruct;
  @try {
    protoStruct = MTProtoSerializer_readUpdateWithByteArray_(content);
  }
  @catch (
#line 278
  JavaIoIOException *e) {
    [((JavaIoIOException *) nil_chk(e)) printStackTrace];
    AMLog_wWithNSString_withNSString_(ImActorModelNetworkApiApiBroker_TAG_, @"Broken mt update");
    return;
  }
  
#line 284
  if ([protoStruct isKindOfClass:[MTPush class]]) {
    jint type = ((MTPush *) nil_chk(((MTPush *) check_class_cast(protoStruct, [MTPush class]))))->updateType_;
    IOSByteArray *body = ((MTPush *) nil_chk(((MTPush *) check_class_cast(protoStruct, [MTPush class]))))->body_;
    
#line 288
    ImActorModelNetworkParserRpcScope *updateBox;
    @try {
      updateBox = [((ImActorModelApiParserRpcParser *) [[ImActorModelApiParserRpcParser alloc] init]) readWithInt:type withByteArray:body];
    }
    @catch (
#line 291
    JavaIoIOException *e) {
      [((JavaIoIOException *) nil_chk(e)) printStackTrace];
      AMLog_wWithNSString_withNSString_(ImActorModelNetworkApiApiBroker_TAG_, @"Broken update box");
      return;
    }
    
#line 299
    [((id<AMActorApiCallback>) nil_chk(self->callback_)) onUpdateReceivedWithId:updateBox];
  }
  else {
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelNetworkApiApiBroker)


#line 305
@implementation ImActorModelNetworkApiApiBroker_PerformRequest


#line 309
- (instancetype)initWithImActorModelNetworkParserRequest:(ImActorModelNetworkParserRequest *)message
                                       withAMRpcCallback:(id<AMRpcCallback>)callback {
  if (self = [super init]) {
    
#line 310
    self->message_ = message;
    
#line 311
    self->callback_ = callback;
  }
  return self;
}


#line 314
- (ImActorModelNetworkParserRequest *)getMessage {
  
#line 315
  return message_;
}


#line 318
- (id<AMRpcCallback>)getCallback {
  
#line 319
  return callback_;
}

- (void)copyAllFieldsTo:(ImActorModelNetworkApiApiBroker_PerformRequest *)other {
  [super copyAllFieldsTo:other];
  other->message_ = message_;
  other->callback_ = callback_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelNetworkApiApiBroker_PerformRequest)


#line 323
@implementation ImActorModelNetworkApiApiBroker_CancelRequest


#line 326
- (instancetype)initWithLong:(jlong)randomId {
  if (self = [super init]) {
    
#line 327
    self->randomId_ = randomId;
  }
  return self;
}


#line 330
- (jlong)getRandomId {
  
#line 331
  return randomId_;
}

- (void)copyAllFieldsTo:(ImActorModelNetworkApiApiBroker_CancelRequest *)other {
  [super copyAllFieldsTo:other];
  other->randomId_ = randomId_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelNetworkApiApiBroker_CancelRequest)


#line 335
@implementation ImActorModelNetworkApiApiBroker_RequestAuthId

- (instancetype)initWithImActorModelNetworkApiApiBroker:(ImActorModelNetworkApiApiBroker *)outer$ {
  return [super init];
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelNetworkApiApiBroker_RequestAuthId)


#line 339
@implementation ImActorModelNetworkApiApiBroker_InitMTProto


#line 342
- (instancetype)initWithImActorModelNetworkApiApiBroker:(ImActorModelNetworkApiApiBroker *)outer$
                                               withLong:(jlong)authId {
  if (self = [super init]) {
    
#line 343
    self->authId_ = authId;
  }
  return self;
}


#line 346
- (jlong)getAuthId {
  
#line 347
  return authId_;
}

- (void)copyAllFieldsTo:(ImActorModelNetworkApiApiBroker_InitMTProto *)other {
  [super copyAllFieldsTo:other];
  other->authId_ = authId_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelNetworkApiApiBroker_InitMTProto)


#line 351
@implementation ImActorModelNetworkApiApiBroker_ProtoResponse


#line 355
- (instancetype)initWithImActorModelNetworkApiApiBroker:(ImActorModelNetworkApiApiBroker *)outer$
                                               withLong:(jlong)responseId
                                          withByteArray:(IOSByteArray *)data {
  if (self = [super init]) {
    
#line 356
    self->responseId_ = responseId;
    
#line 357
    self->data_ = data;
  }
  return self;
}


#line 360
- (jlong)getResponseId {
  
#line 361
  return responseId_;
}


#line 364
- (IOSByteArray *)getData {
  
#line 365
  return data_;
}

- (void)copyAllFieldsTo:(ImActorModelNetworkApiApiBroker_ProtoResponse *)other {
  [super copyAllFieldsTo:other];
  other->responseId_ = responseId_;
  other->data_ = data_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelNetworkApiApiBroker_ProtoResponse)


#line 369
@implementation ImActorModelNetworkApiApiBroker_ProtoUpdate


#line 372
- (instancetype)initWithImActorModelNetworkApiApiBroker:(ImActorModelNetworkApiApiBroker *)outer$
                                          withByteArray:(IOSByteArray *)data {
  if (self = [super init]) {
    
#line 373
    self->data_ = data;
  }
  return self;
}


#line 376
- (IOSByteArray *)getData {
  
#line 377
  return data_;
}

- (void)copyAllFieldsTo:(ImActorModelNetworkApiApiBroker_ProtoUpdate *)other {
  [super copyAllFieldsTo:other];
  other->data_ = data_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelNetworkApiApiBroker_ProtoUpdate)


#line 381
@implementation ImActorModelNetworkApiApiBroker_ForceResend


#line 384
- (instancetype)initWithImActorModelNetworkApiApiBroker:(ImActorModelNetworkApiApiBroker *)outer$
                                               withLong:(jlong)id_ {
  if (self = [super init]) {
    
#line 385
    self->id__ = id_;
  }
  return self;
}


#line 388
- (jlong)getId {
  
#line 389
  return id__;
}

- (void)copyAllFieldsTo:(ImActorModelNetworkApiApiBroker_ForceResend *)other {
  [super copyAllFieldsTo:other];
  other->id__ = id__;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelNetworkApiApiBroker_ForceResend)


#line 393
@implementation ImActorModelNetworkApiApiBroker_RequestHolder


#line 400
- (instancetype)initWithImActorModelNetworkApiApiBroker:(ImActorModelNetworkApiApiBroker *)outer$
                                               withLong:(jlong)publicId
                                       withMTRpcRequest:(MTRpcRequest *)message
                                      withAMRpcCallback:(id<AMRpcCallback>)callback {
  if (self = [super init]) {
    
#line 401
    self->message_ = message;
    
#line 402
    self->publicId_ = publicId;
    
#line 403
    self->callback_ = callback;
  }
  return self;
}

- (void)copyAllFieldsTo:(ImActorModelNetworkApiApiBroker_RequestHolder *)other {
  [super copyAllFieldsTo:other];
  other->message_ = message_;
  other->publicId_ = publicId_;
  other->callback_ = callback_;
  other->protoId_ = protoId_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelNetworkApiApiBroker_RequestHolder)

@implementation ImActorModelNetworkApiApiBroker_$1


#line 47
- (ImActorModelNetworkApiApiBroker *)create {
  
#line 48
  return [[ImActorModelNetworkApiApiBroker alloc] initWithAMEndpoints:val$endpoints_ withAMAuthKeyStorage:val$keyStorage_ withAMActorApiCallback:val$callback_ withAMNetworkProvider:val$networkProvider_];
}

- (instancetype)initWithAMEndpoints:(AMEndpoints *)capture$0
               withAMAuthKeyStorage:(id<AMAuthKeyStorage>)capture$1
             withAMActorApiCallback:(id<AMActorApiCallback>)capture$2
              withAMNetworkProvider:(id<AMNetworkProvider>)capture$3 {
  val$endpoints_ = capture$0;
  val$keyStorage_ = capture$1;
  val$callback_ = capture$2;
  val$networkProvider_ = capture$3;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelNetworkApiApiBroker_$1 *)other {
  [super copyAllFieldsTo:other];
  other->val$endpoints_ = val$endpoints_;
  other->val$keyStorage_ = val$keyStorage_;
  other->val$callback_ = val$callback_;
  other->val$networkProvider_ = val$networkProvider_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelNetworkApiApiBroker_$1)

@implementation ImActorModelNetworkApiApiBroker_$2


#line 112
- (void)onSuccessWithLong:(jlong)authId {
  
#line 113
  AMLog_dWithNSString_withNSString_(ImActorModelNetworkApiApiBroker_get_TAG_(), JreStrcat("$J", @"Key created: ", authId));
  [((DKActorRef *) nil_chk([this$0_ self__])) sendWithId:[[ImActorModelNetworkApiApiBroker_InitMTProto alloc] initWithImActorModelNetworkApiApiBroker:this$0_ withLong:authId]];
}


#line 118
- (void)onFailure {
  AMLog_dWithNSString_withNSString_(ImActorModelNetworkApiApiBroker_get_TAG_(), @"Key creation failure");
  
#line 121
  [((DKActorRef *) nil_chk([this$0_ self__])) sendWithId:[[ImActorModelNetworkApiApiBroker_RequestAuthId alloc] initWithImActorModelNetworkApiApiBroker:this$0_]];
}

- (instancetype)initWithImActorModelNetworkApiApiBroker:(ImActorModelNetworkApiApiBroker *)outer$ {
  this$0_ = outer$;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelNetworkApiApiBroker_$2 *)other {
  [super copyAllFieldsTo:other];
  other->this$0_ = this$0_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelNetworkApiApiBroker_$2)

@implementation ImActorModelNetworkApiApiBroker_$3


#line 131
- (void)onRpcResponseWithLong:(jlong)mid
                withByteArray:(IOSByteArray *)content {
  
#line 132
  [((DKActorRef *) nil_chk([this$0_ self__])) sendWithId:[[ImActorModelNetworkApiApiBroker_ProtoResponse alloc] initWithImActorModelNetworkApiApiBroker:this$0_ withLong:mid withByteArray:content]];
}


#line 136
- (void)onUpdateWithByteArray:(IOSByteArray *)content {
  
#line 137
  [((DKActorRef *) nil_chk([this$0_ self__])) sendWithId:[[ImActorModelNetworkApiApiBroker_ProtoUpdate alloc] initWithImActorModelNetworkApiApiBroker:this$0_ withByteArray:content]];
}


#line 141
- (void)onAuthKeyInvalidatedWithLong:(jlong)authKey {
  [((id<AMActorApiCallback>) nil_chk(this$0_->callback_)) onAuthIdInvalidatedWithLong:authKey];
}


#line 146
- (void)onSessionCreated {
  
#line 147
  [((id<AMActorApiCallback>) nil_chk(this$0_->callback_)) onNewSessionCreated];
}

- (instancetype)initWithImActorModelNetworkApiApiBroker:(ImActorModelNetworkApiApiBroker *)outer$ {
  this$0_ = outer$;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelNetworkApiApiBroker_$3 *)other {
  [super copyAllFieldsTo:other];
  other->this$0_ = this$0_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelNetworkApiApiBroker_$3)
