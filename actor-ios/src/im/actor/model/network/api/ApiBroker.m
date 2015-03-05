//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/network/api/ApiBroker.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/Networking.h"
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
  id<AMNetworking> networking_;
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
J2OBJC_FIELD_SETTER(ImActorModelNetworkApiApiBroker, networking_, id<AMNetworking>)

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
  id<AMNetworking> val$networking_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelNetworkApiApiBroker_$1, val$endpoints_, AMEndpoints *)
J2OBJC_FIELD_SETTER(ImActorModelNetworkApiApiBroker_$1, val$keyStorage_, id<AMAuthKeyStorage>)
J2OBJC_FIELD_SETTER(ImActorModelNetworkApiApiBroker_$1, val$callback_, id<AMActorApiCallback>)
J2OBJC_FIELD_SETTER(ImActorModelNetworkApiApiBroker_$1, val$networking_, id<AMNetworking>)

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

@implementation ImActorModelNetworkApiApiBroker

NSString * ImActorModelNetworkApiApiBroker_TAG_ = @"ApiBroker";
AMAtomicLongCompat * ImActorModelNetworkApiApiBroker_NEXT_RPC_ID_;

+ (DKActorRef *)getWithAMEndpoints:(AMEndpoints *)endpoints
              withAMAuthKeyStorage:(id<AMAuthKeyStorage>)keyStorage
            withAMActorApiCallback:(id<AMActorApiCallback>)callback
                  withAMNetworking:(id<AMNetworking>)networking {
  return ImActorModelNetworkApiApiBroker_getWithAMEndpoints_withAMAuthKeyStorage_withAMActorApiCallback_withAMNetworking_(endpoints, keyStorage, callback, networking);
}

- (instancetype)initWithAMEndpoints:(AMEndpoints *)endpoints
               withAMAuthKeyStorage:(id<AMAuthKeyStorage>)keyStorage
             withAMActorApiCallback:(id<AMActorApiCallback>)callback
                   withAMNetworking:(id<AMNetworking>)networking {
  if (self = [super init]) {
    requests_ = [[JavaUtilHashMap alloc] init];
    idMap_ = [[JavaUtilHashMap alloc] init];
    self->endpoints_ = endpoints;
    self->keyStorage_ = keyStorage;
    self->callback_ = callback;
    self->networking_ = networking;
  }
  return self;
}

- (void)preStart {
  if ([((id<AMAuthKeyStorage>) nil_chk(keyStorage_)) getAuthKey] == 0) {
    [((DKActorRef *) nil_chk([self self__])) sendWithId:[[ImActorModelNetworkApiApiBroker_RequestAuthId alloc] initWithImActorModelNetworkApiApiBroker:self]];
  }
  else {
    [((DKActorRef *) nil_chk([self self__])) sendWithId:[[ImActorModelNetworkApiApiBroker_InitMTProto alloc] initWithImActorModelNetworkApiApiBroker:self withLong:[keyStorage_ getAuthKey]]];
  }
}

- (void)onReceiveWithId:(id)message {
  if ([message isKindOfClass:[ImActorModelNetworkApiApiBroker_RequestAuthId class]]) {
    ImActorModelNetworkApiApiBroker_requestAuthId(self);
  }
  else if ([message isKindOfClass:[ImActorModelNetworkApiApiBroker_InitMTProto class]]) {
    ImActorModelNetworkApiApiBroker_createMtProtoWithLong_(self, [((ImActorModelNetworkApiApiBroker_InitMTProto *) nil_chk(((ImActorModelNetworkApiApiBroker_InitMTProto *) check_class_cast(message, [ImActorModelNetworkApiApiBroker_InitMTProto class])))) getAuthId]);
  }
  else if ([message isKindOfClass:[ImActorModelNetworkApiApiBroker_PerformRequest class]]) {
    ImActorModelNetworkApiApiBroker_performRequestWithLong_withImActorModelNetworkParserRequest_withAMRpcCallback_(self, [((AMAtomicLongCompat *) nil_chk(ImActorModelNetworkApiApiBroker_NEXT_RPC_ID_)) getAndIncrement], [((ImActorModelNetworkApiApiBroker_PerformRequest *) nil_chk(((ImActorModelNetworkApiApiBroker_PerformRequest *) check_class_cast(message, [ImActorModelNetworkApiApiBroker_PerformRequest class])))) getMessage], [((ImActorModelNetworkApiApiBroker_PerformRequest *) nil_chk(((ImActorModelNetworkApiApiBroker_PerformRequest *) check_class_cast(message, [ImActorModelNetworkApiApiBroker_PerformRequest class])))) getCallback]);
  }
  else if ([message isKindOfClass:[ImActorModelNetworkApiApiBroker_CancelRequest class]]) {
    ImActorModelNetworkApiApiBroker_cancelRequestWithLong_(self, [((ImActorModelNetworkApiApiBroker_CancelRequest *) nil_chk(((ImActorModelNetworkApiApiBroker_CancelRequest *) check_class_cast(message, [ImActorModelNetworkApiApiBroker_CancelRequest class])))) getRandomId]);
  }
  else if ([message isKindOfClass:[ImActorModelNetworkApiApiBroker_ProtoResponse class]]) {
    ImActorModelNetworkApiApiBroker_processResponseWithLong_withByteArray_(self, [((ImActorModelNetworkApiApiBroker_ProtoResponse *) nil_chk(((ImActorModelNetworkApiApiBroker_ProtoResponse *) check_class_cast(message, [ImActorModelNetworkApiApiBroker_ProtoResponse class])))) getResponseId], [((ImActorModelNetworkApiApiBroker_ProtoResponse *) nil_chk(((ImActorModelNetworkApiApiBroker_ProtoResponse *) check_class_cast(message, [ImActorModelNetworkApiApiBroker_ProtoResponse class])))) getData]);
  }
  else if ([message isKindOfClass:[ImActorModelNetworkApiApiBroker_ForceResend class]]) {
    ImActorModelNetworkApiApiBroker_forceResendWithLong_(self, ((ImActorModelNetworkApiApiBroker_ForceResend *) nil_chk(((ImActorModelNetworkApiApiBroker_ForceResend *) check_class_cast(message, [ImActorModelNetworkApiApiBroker_ForceResend class]))))->id__);
  }
  else if ([message isKindOfClass:[ImActorModelNetworkApiApiBroker_ProtoUpdate class]]) {
    ImActorModelNetworkApiApiBroker_processUpdateWithByteArray_(self, [((ImActorModelNetworkApiApiBroker_ProtoUpdate *) nil_chk(((ImActorModelNetworkApiApiBroker_ProtoUpdate *) check_class_cast(message, [ImActorModelNetworkApiApiBroker_ProtoUpdate class])))) getData]);
  }
}

- (void)requestAuthId {
  ImActorModelNetworkApiApiBroker_requestAuthId(self);
}

- (void)createMtProtoWithLong:(jlong)key {
  ImActorModelNetworkApiApiBroker_createMtProtoWithLong_(self, key);
}

- (void)performRequestWithLong:(jlong)randomId
withImActorModelNetworkParserRequest:(ImActorModelNetworkParserRequest *)message
             withAMRpcCallback:(id<AMRpcCallback>)callback {
  ImActorModelNetworkApiApiBroker_performRequestWithLong_withImActorModelNetworkParserRequest_withAMRpcCallback_(self, randomId, message, callback);
}

- (void)processResponseWithLong:(jlong)mid
                  withByteArray:(IOSByteArray *)content {
  ImActorModelNetworkApiApiBroker_processResponseWithLong_withByteArray_(self, mid, content);
}

- (void)forceResendWithLong:(jlong)randomId {
  ImActorModelNetworkApiApiBroker_forceResendWithLong_(self, randomId);
}

- (void)cancelRequestWithLong:(jlong)randomId {
  ImActorModelNetworkApiApiBroker_cancelRequestWithLong_(self, randomId);
}

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
  other->networking_ = networking_;
}

+ (void)initialize {
  if (self == [ImActorModelNetworkApiApiBroker class]) {
    ImActorModelNetworkApiApiBroker_NEXT_RPC_ID_ = DKEnvironment_createAtomicLongWithLong_(1);
    J2OBJC_SET_INITIALIZED(ImActorModelNetworkApiApiBroker)
  }
}

@end

DKActorRef *ImActorModelNetworkApiApiBroker_getWithAMEndpoints_withAMAuthKeyStorage_withAMActorApiCallback_withAMNetworking_(AMEndpoints *endpoints, id<AMAuthKeyStorage> keyStorage, id<AMActorApiCallback> callback, id<AMNetworking> networking) {
  ImActorModelNetworkApiApiBroker_init();
  return [((DKActorSystem *) nil_chk(DKActorSystem_system())) actorOfWithDKProps:DKProps_createWithIOSClass_withDKActorCreator_(ImActorModelNetworkApiApiBroker_class_(), [[ImActorModelNetworkApiApiBroker_$1 alloc] initWithAMEndpoints:endpoints withAMAuthKeyStorage:keyStorage withAMActorApiCallback:callback withAMNetworking:networking]) withNSString:@"api/broker"];
}

void ImActorModelNetworkApiApiBroker_requestAuthId(ImActorModelNetworkApiApiBroker *self) {
  AMLog_dWithNSString_withNSString_(ImActorModelNetworkApiApiBroker_TAG_, @"Creating auth key...");
  MTAuthIdRetriever_requestAuthIdWithAMEndpoints_withAMNetworking_withMTAuthIdRetriever_AuthIdCallback_(self->endpoints_, self->networking_, [[ImActorModelNetworkApiApiBroker_$2 alloc] initWithImActorModelNetworkApiApiBroker:self]);
}

void ImActorModelNetworkApiApiBroker_createMtProtoWithLong_(ImActorModelNetworkApiApiBroker *self, jlong key) {
  AMLog_dWithNSString_withNSString_(ImActorModelNetworkApiApiBroker_TAG_, @"Creating proto");
  [((id<AMAuthKeyStorage>) nil_chk(self->keyStorage_)) saveAuthKeyWithLong:key];
  self->proto_ = [[MTMTProto alloc] initWithLong:key withLong:[((JavaUtilRandom *) [[JavaUtilRandom alloc] init]) nextLong] withAMEndpoints:self->endpoints_ withMTMTProtoCallback:[[ImActorModelNetworkApiApiBroker_$3 alloc] initWithImActorModelNetworkApiApiBroker:self] withAMNetworking:self->networking_];
  for (ImActorModelNetworkApiApiBroker_RequestHolder * __strong holder in nil_chk([((JavaUtilHashMap *) nil_chk(self->requests_)) values])) {
    ((ImActorModelNetworkApiApiBroker_RequestHolder *) nil_chk(holder))->protoId_ = [self->proto_ sendRpcMessageWithMTProtoStruct:holder->message_];
    (void) [((JavaUtilHashMap *) nil_chk(self->idMap_)) putWithId:JavaLangLong_valueOfWithLong_(holder->protoId_) withId:JavaLangLong_valueOfWithLong_(holder->publicId_)];
  }
}

void ImActorModelNetworkApiApiBroker_performRequestWithLong_withImActorModelNetworkParserRequest_withAMRpcCallback_(ImActorModelNetworkApiApiBroker *self, jlong randomId, ImActorModelNetworkParserRequest *message, id<AMRpcCallback> callback) {
  AMLog_dWithNSString_withNSString_(ImActorModelNetworkApiApiBroker_TAG_, JreStrcat("$J$@", @"-> request#", randomId, @": ", message));
  ImActorModelNetworkApiApiBroker_RequestHolder *holder = [[ImActorModelNetworkApiApiBroker_RequestHolder alloc] initWithImActorModelNetworkApiApiBroker:self withLong:randomId withMTRpcRequest:[[MTRpcRequest alloc] initWithInt:[((ImActorModelNetworkParserRequest *) nil_chk(message)) getHeaderKey] withByteArray:[message toByteArray]] withAMRpcCallback:callback];
  (void) [((JavaUtilHashMap *) nil_chk(self->requests_)) putWithId:JavaLangLong_valueOfWithLong_(holder->publicId_) withId:holder];
  if (self->proto_ != nil) {
    jlong mid = [self->proto_ sendRpcMessageWithMTProtoStruct:holder->message_];
    holder->protoId_ = mid;
    (void) [((JavaUtilHashMap *) nil_chk(self->idMap_)) putWithId:JavaLangLong_valueOfWithLong_(mid) withId:JavaLangLong_valueOfWithLong_(randomId)];
  }
}

void ImActorModelNetworkApiApiBroker_processResponseWithLong_withByteArray_(ImActorModelNetworkApiApiBroker *self, jlong mid, IOSByteArray *content) {
  MTProtoStruct *protoStruct;
  @try {
    protoStruct = MTProtoSerializer_readRpcResponsePayloadWithByteArray_(content);
  }
  @catch (JavaIoIOException *e) {
    [((JavaIoIOException *) nil_chk(e)) printStackTrace];
    AMLog_wWithNSString_withNSString_(ImActorModelNetworkApiApiBroker_TAG_, JreStrcat("$J", @"Broken response mid#", mid));
    return;
  }
  jlong rid;
  if ([((JavaUtilHashMap *) nil_chk(self->idMap_)) containsKeyWithId:JavaLangLong_valueOfWithLong_(mid)]) {
    rid = [((JavaLangLong *) nil_chk([self->idMap_ getWithId:JavaLangLong_valueOfWithLong_(mid)])) longLongValue];
  }
  else {
    return;
  }
  ImActorModelNetworkApiApiBroker_RequestHolder *holder;
  if ([((JavaUtilHashMap *) nil_chk(self->requests_)) containsKeyWithId:JavaLangLong_valueOfWithLong_(rid)]) {
    holder = [self->requests_ getWithId:JavaLangLong_valueOfWithLong_(rid)];
  }
  else {
    return;
  }
  if ([protoStruct isKindOfClass:[MTRpcOk class]]) {
    MTRpcOk *ok = (MTRpcOk *) check_class_cast(protoStruct, [MTRpcOk class]);
    (void) [self->requests_ removeWithId:JavaLangLong_valueOfWithLong_(rid)];
    if (((ImActorModelNetworkApiApiBroker_RequestHolder *) nil_chk(holder))->protoId_ != 0) {
      (void) [self->idMap_ removeWithId:JavaLangLong_valueOfWithLong_(holder->protoId_)];
    }
    ImActorModelNetworkParserResponse *response;
    @try {
      response = (ImActorModelNetworkParserResponse *) check_class_cast([((ImActorModelApiParserRpcParser *) [[ImActorModelApiParserRpcParser alloc] init]) readWithInt:((MTRpcOk *) nil_chk(ok))->responseType_ withByteArray:ok->payload_], [ImActorModelNetworkParserResponse class]);
    }
    @catch (JavaIoIOException *e) {
      [((JavaIoIOException *) nil_chk(e)) printStackTrace];
      return;
    }
    AMLog_dWithNSString_withNSString_(ImActorModelNetworkApiApiBroker_TAG_, JreStrcat("$J$@", @"<- response#", holder->publicId_, @": ", response));
    [((id<AMRpcCallback>) nil_chk(holder->callback_)) onResultWithImActorModelNetworkParserResponse:response];
  }
  else if ([protoStruct isKindOfClass:[MTRpcError class]]) {
    MTRpcError *e = (MTRpcError *) check_class_cast(protoStruct, [MTRpcError class]);
    (void) [self->requests_ removeWithId:JavaLangLong_valueOfWithLong_(rid)];
    if (((ImActorModelNetworkApiApiBroker_RequestHolder *) nil_chk(holder))->protoId_ != 0) {
      (void) [self->idMap_ removeWithId:JavaLangLong_valueOfWithLong_(holder->protoId_)];
    }
    AMLog_wWithNSString_withNSString_(ImActorModelNetworkApiApiBroker_TAG_, JreStrcat("$J$$CIC$", @"<- error#", holder->publicId_, @": ", ((MTRpcError *) nil_chk(e))->errorTag_, ' ', e->errorCode_, ' ', e->userMessage_));
    [((id<AMRpcCallback>) nil_chk(holder->callback_)) onErrorWithAMRpcException:[[AMRpcException alloc] initWithNSString:e->errorTag_ withInt:e->errorCode_ withNSString:e->userMessage_ withBoolean:e->canTryAgain_ withByteArray:e->relatedData_]];
  }
  else if ([protoStruct isKindOfClass:[MTRpcInternalError class]]) {
    MTRpcInternalError *e = ((MTRpcInternalError *) check_class_cast(protoStruct, [MTRpcInternalError class]));
    AMLog_dWithNSString_withNSString_(ImActorModelNetworkApiApiBroker_TAG_, JreStrcat("$J", @"<- internal_error#", ((ImActorModelNetworkApiApiBroker_RequestHolder *) nil_chk(holder))->publicId_));
    if ([((MTRpcInternalError *) nil_chk(e)) isCanTryAgain]) {
      [((DKActorRef *) nil_chk([self self__])) sendWithId:[[ImActorModelNetworkApiApiBroker_ForceResend alloc] initWithImActorModelNetworkApiApiBroker:self withLong:rid] withLong:[e getTryAgainDelay] * 1000LL];
    }
    else {
      (void) [self->requests_ removeWithId:JavaLangLong_valueOfWithLong_(rid)];
      if (holder->protoId_ != 0) {
        (void) [self->idMap_ removeWithId:JavaLangLong_valueOfWithLong_(holder->protoId_)];
      }
      [((id<AMRpcCallback>) nil_chk(holder->callback_)) onErrorWithAMRpcException:[[AMRpcInternalException alloc] init]];
    }
  }
  else if ([protoStruct isKindOfClass:[MTRpcFloodWait class]]) {
    MTRpcFloodWait *f = (MTRpcFloodWait *) check_class_cast(protoStruct, [MTRpcFloodWait class]);
    AMLog_dWithNSString_withNSString_(ImActorModelNetworkApiApiBroker_TAG_, JreStrcat("$JCI$", @"<- flood_wait#", ((ImActorModelNetworkApiApiBroker_RequestHolder *) nil_chk(holder))->publicId_, ' ', [((MTRpcFloodWait *) nil_chk(f)) getDelay], @" sec"));
    [((DKActorRef *) nil_chk([self self__])) sendWithId:[[ImActorModelNetworkApiApiBroker_ForceResend alloc] initWithImActorModelNetworkApiApiBroker:self withLong:rid] withLong:[f getDelay] * 1000LL];
  }
  else {
  }
}

void ImActorModelNetworkApiApiBroker_forceResendWithLong_(ImActorModelNetworkApiApiBroker *self, jlong randomId) {
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
  MTProtoStruct *protoStruct;
  @try {
    protoStruct = MTProtoSerializer_readUpdateWithByteArray_(content);
  }
  @catch (JavaIoIOException *e) {
    [((JavaIoIOException *) nil_chk(e)) printStackTrace];
    AMLog_wWithNSString_withNSString_(ImActorModelNetworkApiApiBroker_TAG_, @"Broken mt update");
    return;
  }
  if ([protoStruct isKindOfClass:[MTPush class]]) {
    jint type = ((MTPush *) nil_chk(((MTPush *) check_class_cast(protoStruct, [MTPush class]))))->updateType_;
    IOSByteArray *body = ((MTPush *) nil_chk(((MTPush *) check_class_cast(protoStruct, [MTPush class]))))->body_;
    ImActorModelNetworkParserRpcScope *updateBox;
    @try {
      updateBox = [((ImActorModelApiParserRpcParser *) [[ImActorModelApiParserRpcParser alloc] init]) readWithInt:type withByteArray:body];
    }
    @catch (JavaIoIOException *e) {
      [((JavaIoIOException *) nil_chk(e)) printStackTrace];
      AMLog_wWithNSString_withNSString_(ImActorModelNetworkApiApiBroker_TAG_, @"Broken update box");
      return;
    }
    [((id<AMActorApiCallback>) nil_chk(self->callback_)) onUpdateReceivedWithId:updateBox];
  }
  else {
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelNetworkApiApiBroker)

@implementation ImActorModelNetworkApiApiBroker_PerformRequest

- (instancetype)initWithImActorModelNetworkParserRequest:(ImActorModelNetworkParserRequest *)message
                                       withAMRpcCallback:(id<AMRpcCallback>)callback {
  if (self = [super init]) {
    self->message_ = message;
    self->callback_ = callback;
  }
  return self;
}

- (ImActorModelNetworkParserRequest *)getMessage {
  return message_;
}

- (id<AMRpcCallback>)getCallback {
  return callback_;
}

- (void)copyAllFieldsTo:(ImActorModelNetworkApiApiBroker_PerformRequest *)other {
  [super copyAllFieldsTo:other];
  other->message_ = message_;
  other->callback_ = callback_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelNetworkApiApiBroker_PerformRequest)

@implementation ImActorModelNetworkApiApiBroker_CancelRequest

- (instancetype)initWithLong:(jlong)randomId {
  if (self = [super init]) {
    self->randomId_ = randomId;
  }
  return self;
}

- (jlong)getRandomId {
  return randomId_;
}

- (void)copyAllFieldsTo:(ImActorModelNetworkApiApiBroker_CancelRequest *)other {
  [super copyAllFieldsTo:other];
  other->randomId_ = randomId_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelNetworkApiApiBroker_CancelRequest)

@implementation ImActorModelNetworkApiApiBroker_RequestAuthId

- (instancetype)initWithImActorModelNetworkApiApiBroker:(ImActorModelNetworkApiApiBroker *)outer$ {
  return [super init];
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelNetworkApiApiBroker_RequestAuthId)

@implementation ImActorModelNetworkApiApiBroker_InitMTProto

- (instancetype)initWithImActorModelNetworkApiApiBroker:(ImActorModelNetworkApiApiBroker *)outer$
                                               withLong:(jlong)authId {
  if (self = [super init]) {
    self->authId_ = authId;
  }
  return self;
}

- (jlong)getAuthId {
  return authId_;
}

- (void)copyAllFieldsTo:(ImActorModelNetworkApiApiBroker_InitMTProto *)other {
  [super copyAllFieldsTo:other];
  other->authId_ = authId_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelNetworkApiApiBroker_InitMTProto)

@implementation ImActorModelNetworkApiApiBroker_ProtoResponse

- (instancetype)initWithImActorModelNetworkApiApiBroker:(ImActorModelNetworkApiApiBroker *)outer$
                                               withLong:(jlong)responseId
                                          withByteArray:(IOSByteArray *)data {
  if (self = [super init]) {
    self->responseId_ = responseId;
    self->data_ = data;
  }
  return self;
}

- (jlong)getResponseId {
  return responseId_;
}

- (IOSByteArray *)getData {
  return data_;
}

- (void)copyAllFieldsTo:(ImActorModelNetworkApiApiBroker_ProtoResponse *)other {
  [super copyAllFieldsTo:other];
  other->responseId_ = responseId_;
  other->data_ = data_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelNetworkApiApiBroker_ProtoResponse)

@implementation ImActorModelNetworkApiApiBroker_ProtoUpdate

- (instancetype)initWithImActorModelNetworkApiApiBroker:(ImActorModelNetworkApiApiBroker *)outer$
                                          withByteArray:(IOSByteArray *)data {
  if (self = [super init]) {
    self->data_ = data;
  }
  return self;
}

- (IOSByteArray *)getData {
  return data_;
}

- (void)copyAllFieldsTo:(ImActorModelNetworkApiApiBroker_ProtoUpdate *)other {
  [super copyAllFieldsTo:other];
  other->data_ = data_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelNetworkApiApiBroker_ProtoUpdate)

@implementation ImActorModelNetworkApiApiBroker_ForceResend

- (instancetype)initWithImActorModelNetworkApiApiBroker:(ImActorModelNetworkApiApiBroker *)outer$
                                               withLong:(jlong)id_ {
  if (self = [super init]) {
    self->id__ = id_;
  }
  return self;
}

- (jlong)getId {
  return id__;
}

- (void)copyAllFieldsTo:(ImActorModelNetworkApiApiBroker_ForceResend *)other {
  [super copyAllFieldsTo:other];
  other->id__ = id__;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelNetworkApiApiBroker_ForceResend)

@implementation ImActorModelNetworkApiApiBroker_RequestHolder

- (instancetype)initWithImActorModelNetworkApiApiBroker:(ImActorModelNetworkApiApiBroker *)outer$
                                               withLong:(jlong)publicId
                                       withMTRpcRequest:(MTRpcRequest *)message
                                      withAMRpcCallback:(id<AMRpcCallback>)callback {
  if (self = [super init]) {
    self->message_ = message;
    self->publicId_ = publicId;
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

- (ImActorModelNetworkApiApiBroker *)create {
  return [[ImActorModelNetworkApiApiBroker alloc] initWithAMEndpoints:val$endpoints_ withAMAuthKeyStorage:val$keyStorage_ withAMActorApiCallback:val$callback_ withAMNetworking:val$networking_];
}

- (instancetype)initWithAMEndpoints:(AMEndpoints *)capture$0
               withAMAuthKeyStorage:(id<AMAuthKeyStorage>)capture$1
             withAMActorApiCallback:(id<AMActorApiCallback>)capture$2
                   withAMNetworking:(id<AMNetworking>)capture$3 {
  val$endpoints_ = capture$0;
  val$keyStorage_ = capture$1;
  val$callback_ = capture$2;
  val$networking_ = capture$3;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelNetworkApiApiBroker_$1 *)other {
  [super copyAllFieldsTo:other];
  other->val$endpoints_ = val$endpoints_;
  other->val$keyStorage_ = val$keyStorage_;
  other->val$callback_ = val$callback_;
  other->val$networking_ = val$networking_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelNetworkApiApiBroker_$1)

@implementation ImActorModelNetworkApiApiBroker_$2

- (void)onSuccessWithLong:(jlong)authId {
  AMLog_dWithNSString_withNSString_(ImActorModelNetworkApiApiBroker_get_TAG_(), @"Key created");
  [((DKActorRef *) nil_chk([this$0_ self__])) sendWithId:[[ImActorModelNetworkApiApiBroker_InitMTProto alloc] initWithImActorModelNetworkApiApiBroker:this$0_ withLong:authId]];
}

- (void)onFailure {
  AMLog_dWithNSString_withNSString_(ImActorModelNetworkApiApiBroker_get_TAG_(), @"Key creation failure");
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

- (void)onRpcResponseWithLong:(jlong)mid
                withByteArray:(IOSByteArray *)content {
  [((DKActorRef *) nil_chk([this$0_ self__])) sendWithId:[[ImActorModelNetworkApiApiBroker_ProtoResponse alloc] initWithImActorModelNetworkApiApiBroker:this$0_ withLong:mid withByteArray:content]];
}

- (void)onUpdateWithByteArray:(IOSByteArray *)content {
  [((DKActorRef *) nil_chk([this$0_ self__])) sendWithId:[[ImActorModelNetworkApiApiBroker_ProtoUpdate alloc] initWithImActorModelNetworkApiApiBroker:this$0_ withByteArray:content]];
}

- (void)onAuthKeyInvalidatedWithLong:(jlong)authKey {
  [((id<AMActorApiCallback>) nil_chk(this$0_->callback_)) onAuthIdInvalidatedWithLong:authKey];
}

- (void)onSessionCreated {
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
