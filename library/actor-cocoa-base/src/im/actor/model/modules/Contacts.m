//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/Contacts.java
//

#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/Contacts.java"

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/Configuration.h"
#include "im/actor/model/StorageProvider.h"
#include "im/actor/model/api/base/SeqUpdate.h"
#include "im/actor/model/api/rpc/RequestAddContact.h"
#include "im/actor/model/api/rpc/RequestRemoveContact.h"
#include "im/actor/model/api/rpc/RequestSearchContacts.h"
#include "im/actor/model/api/rpc/ResponseSearchContacts.h"
#include "im/actor/model/api/rpc/ResponseSeq.h"
#include "im/actor/model/api/updates/UpdateContactsAdded.h"
#include "im/actor/model/api/updates/UpdateContactsRemoved.h"
#include "im/actor/model/concurrency/Command.h"
#include "im/actor/model/concurrency/CommandCallback.h"
#include "im/actor/model/droidkit/actors/ActorRef.h"
#include "im/actor/model/droidkit/actors/ActorSystem.h"
#include "im/actor/model/droidkit/actors/Props.h"
#include "im/actor/model/droidkit/engine/KeyValueEngine.h"
#include "im/actor/model/droidkit/engine/ListEngine.h"
#include "im/actor/model/droidkit/engine/ListStorage.h"
#include "im/actor/model/droidkit/engine/PreferencesStorage.h"
#include "im/actor/model/entity/User.h"
#include "im/actor/model/modules/BaseModule.h"
#include "im/actor/model/modules/Contacts.h"
#include "im/actor/model/modules/Modules.h"
#include "im/actor/model/modules/Updates.h"
#include "im/actor/model/modules/contacts/BookImportActor.h"
#include "im/actor/model/modules/contacts/ContactsSyncActor.h"
#include "im/actor/model/modules/updates/internal/UsersFounded.h"
#include "im/actor/model/network/RpcException.h"
#include "im/actor/model/network/RpcInternalException.h"
#include "im/actor/model/viewmodel/UserVM.h"
#include "java/lang/Boolean.h"
#include "java/lang/Integer.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"

@interface ImActorModelModulesContacts () {
 @public
  id<DKListEngine> contacts_;
  DKActorRef *bookImportActor_;
  DKActorRef *contactSyncActor_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesContacts, contacts_, id<DKListEngine>)
J2OBJC_FIELD_SETTER(ImActorModelModulesContacts, bookImportActor_, DKActorRef *)
J2OBJC_FIELD_SETTER(ImActorModelModulesContacts, contactSyncActor_, DKActorRef *)

@interface ImActorModelModulesContacts_$1 () {
 @public
  ImActorModelModulesModules *val$modules_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesContacts_$1, val$modules_, ImActorModelModulesModules *)

@interface ImActorModelModulesContacts_$2 () {
 @public
  ImActorModelModulesModules *val$modules_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesContacts_$2, val$modules_, ImActorModelModulesModules *)

@interface ImActorModelModulesContacts_$3 () {
 @public
  ImActorModelModulesContacts *this$0_;
  NSString *val$query_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesContacts_$3, this$0_, ImActorModelModulesContacts *)
J2OBJC_FIELD_SETTER(ImActorModelModulesContacts_$3, val$query_, NSString *)

@interface ImActorModelModulesContacts_$3_$1 () {
 @public
  ImActorModelModulesContacts_$3 *this$0_;
  id<AMCommandCallback> val$callback_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesContacts_$3_$1, this$0_, ImActorModelModulesContacts_$3 *)
J2OBJC_FIELD_SETTER(ImActorModelModulesContacts_$3_$1, val$callback_, id<AMCommandCallback>)

@interface ImActorModelModulesContacts_$3_$1_$1 () {
 @public
  ImActorModelModulesContacts_$3_$1 *this$0_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesContacts_$3_$1_$1, this$0_, ImActorModelModulesContacts_$3_$1 *)

@interface ImActorModelModulesContacts_$3_$1_$2 () {
 @public
  ImActorModelModulesContacts_$3_$1 *this$0_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesContacts_$3_$1_$2, this$0_, ImActorModelModulesContacts_$3_$1 *)

@interface ImActorModelModulesContacts_$4 () {
 @public
  ImActorModelModulesContacts *this$0_;
  jint val$uid_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesContacts_$4, this$0_, ImActorModelModulesContacts *)

@interface ImActorModelModulesContacts_$4_$1 () {
 @public
  id<AMCommandCallback> val$callback_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesContacts_$4_$1, val$callback_, id<AMCommandCallback>)

@interface ImActorModelModulesContacts_$4_$2 () {
 @public
  ImActorModelModulesContacts_$4 *this$0_;
  id<AMCommandCallback> val$callback_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesContacts_$4_$2, this$0_, ImActorModelModulesContacts_$4 *)
J2OBJC_FIELD_SETTER(ImActorModelModulesContacts_$4_$2, val$callback_, id<AMCommandCallback>)

@interface ImActorModelModulesContacts_$4_$2_$1 () {
 @public
  ImActorModelModulesContacts_$4_$2 *this$0_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesContacts_$4_$2_$1, this$0_, ImActorModelModulesContacts_$4_$2 *)

@interface ImActorModelModulesContacts_$4_$2_$2 () {
 @public
  ImActorModelModulesContacts_$4_$2 *this$0_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesContacts_$4_$2_$2, this$0_, ImActorModelModulesContacts_$4_$2 *)

@interface ImActorModelModulesContacts_$5 () {
 @public
  ImActorModelModulesContacts *this$0_;
  jint val$uid_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesContacts_$5, this$0_, ImActorModelModulesContacts *)

@interface ImActorModelModulesContacts_$5_$1 () {
 @public
  id<AMCommandCallback> val$callback_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesContacts_$5_$1, val$callback_, id<AMCommandCallback>)

@interface ImActorModelModulesContacts_$5_$2 () {
 @public
  ImActorModelModulesContacts_$5 *this$0_;
  id<AMCommandCallback> val$callback_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesContacts_$5_$2, this$0_, ImActorModelModulesContacts_$5 *)
J2OBJC_FIELD_SETTER(ImActorModelModulesContacts_$5_$2, val$callback_, id<AMCommandCallback>)

@interface ImActorModelModulesContacts_$5_$2_$1 () {
 @public
  ImActorModelModulesContacts_$5_$2 *this$0_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesContacts_$5_$2_$1, this$0_, ImActorModelModulesContacts_$5_$2 *)

@interface ImActorModelModulesContacts_$5_$2_$2 () {
 @public
  ImActorModelModulesContacts_$5_$2 *this$0_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesContacts_$5_$2_$2, this$0_, ImActorModelModulesContacts_$5_$2 *)


#line 33
@implementation ImActorModelModulesContacts


#line 39
- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)modules {
  if (self =
#line 40
  [super initWithImActorModelModulesModules:modules]) {
    
#line 42
    contacts_ = [((id<AMStorageProvider>) nil_chk([((AMConfiguration *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules)) getConfiguration])) getStorageProvider])) createContactsListWithDKListStorage:
#line 43
    [((id<AMStorageProvider>) nil_chk([((AMConfiguration *) nil_chk([modules getConfiguration])) getStorageProvider])) createList:ImActorModelModulesBaseModule_get_STORAGE_CONTACTS_()]];
    
#line 45
    bookImportActor_ = [((DKActorSystem *) nil_chk(DKActorSystem_system())) actorOfWithDKProps:DKProps_createWithIOSClass_withDKActorCreator_(ImActorModelModulesContactsBookImportActor_class_(), [[ImActorModelModulesContacts_$1 alloc] initWithImActorModelModulesModules:modules]) withNSString:
#line 50
    @"actor/book_import"];
    
#line 51
    contactSyncActor_ = [((DKActorSystem *) nil_chk(DKActorSystem_system())) actorOfWithDKProps:DKProps_createWithIOSClass_withDKActorCreator_(ImActorModelModulesContactsContactsSyncActor_class_(), [[ImActorModelModulesContacts_$2 alloc] initWithImActorModelModulesModules:modules]) withNSString:
#line 56
    @"actor/contacts_sync"];
  }
  return self;
}


#line 59
- (id<DKListEngine>)getContacts {
  
#line 60
  return contacts_;
}


#line 63
- (void)onPhoneBookChanged {
  
#line 64
  [((DKActorRef *) nil_chk(bookImportActor_)) sendWithId:[[ImActorModelModulesContactsBookImportActor_PerformSync alloc] init]];
}


#line 67
- (DKActorRef *)getContactSyncActor {
  
#line 68
  return contactSyncActor_;
}


#line 71
- (void)markContactWithInt:(jint)uid {
  
#line 72
  [((id<DKPreferencesStorage>) nil_chk([self preferences])) putBool:JreStrcat("$I", @"contact_", uid) withValue:YES];
}


#line 75
- (void)markNonContactWithInt:(jint)uid {
  
#line 76
  [((id<DKPreferencesStorage>) nil_chk([self preferences])) putBool:JreStrcat("$I", @"contact_", uid) withValue:NO];
}


#line 79
- (jboolean)isUserContactWithInt:(jint)uid {
  
#line 80
  return [((id<DKPreferencesStorage>) nil_chk([self preferences])) getBool:JreStrcat("$I", @"contact_", uid) withDefault:NO];
}


#line 83
- (id<AMCommand>)findUsersWithNSString:(NSString *)query {
  
#line 84
  return [[ImActorModelModulesContacts_$3 alloc] initWithImActorModelModulesContacts:self withNSString:query];
}


#line 118
- (id<AMCommand>)addContactWithInt:(jint)uid {
  
#line 119
  return [[ImActorModelModulesContacts_$4 alloc] initWithImActorModelModulesContacts:self withInt:uid];
}


#line 163
- (id<AMCommand>)removeContactWithInt:(jint)uid {
  
#line 164
  return [[ImActorModelModulesContacts_$5 alloc] initWithImActorModelModulesContacts:self withInt:uid];
}

- (void)copyAllFieldsTo:(ImActorModelModulesContacts *)other {
  [super copyAllFieldsTo:other];
  other->contacts_ = contacts_;
  other->bookImportActor_ = bookImportActor_;
  other->contactSyncActor_ = contactSyncActor_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesContacts)

@implementation ImActorModelModulesContacts_$1


#line 47
- (ImActorModelModulesContactsBookImportActor *)create {
  
#line 48
  return [[ImActorModelModulesContactsBookImportActor alloc] initWithImActorModelModulesModules:val$modules_];
}

- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)capture$0 {
  val$modules_ = capture$0;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelModulesContacts_$1 *)other {
  [super copyAllFieldsTo:other];
  other->val$modules_ = val$modules_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesContacts_$1)

@implementation ImActorModelModulesContacts_$2


#line 53
- (ImActorModelModulesContactsContactsSyncActor *)create {
  
#line 54
  return [[ImActorModelModulesContactsContactsSyncActor alloc] initWithImActorModelModulesModules:val$modules_];
}

- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)capture$0 {
  val$modules_ = capture$0;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelModulesContacts_$2 *)other {
  [super copyAllFieldsTo:other];
  other->val$modules_ = val$modules_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesContacts_$2)

@implementation ImActorModelModulesContacts_$3


#line 86
- (void)startWithAMCommandCallback:(id<AMCommandCallback>)callback {
  
#line 87
  [this$0_ requestWithImActorModelNetworkParserRequest:[[ImActorModelApiRpcRequestSearchContacts alloc] initWithNSString:val$query_] withAMRpcCallback:[[ImActorModelModulesContacts_$3_$1 alloc] initWithImActorModelModulesContacts_$3:self withAMCommandCallback:callback]];
}

- (instancetype)initWithImActorModelModulesContacts:(ImActorModelModulesContacts *)outer$
                                       withNSString:(NSString *)capture$0 {
  this$0_ = outer$;
  val$query_ = capture$0;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelModulesContacts_$3 *)other {
  [super copyAllFieldsTo:other];
  other->this$0_ = this$0_;
  other->val$query_ = val$query_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesContacts_$3)

@implementation ImActorModelModulesContacts_$3_$1


#line 89
- (void)onResultWithImActorModelNetworkParserResponse:(ImActorModelApiRpcResponseSearchContacts *)response {
  
#line 90
  if ([((id<JavaUtilList>) nil_chk([((ImActorModelApiRpcResponseSearchContacts *) nil_chk(response)) getUsers])) size] == 0) {
    [this$0_->this$0_ runOnUiThreadWithJavaLangRunnable:[[ImActorModelModulesContacts_$3_$1_$1 alloc] initWithImActorModelModulesContacts_$3_$1:self]];
    
#line 97
    return;
  }
  
#line 100
  [((ImActorModelModulesUpdates *) nil_chk([this$0_->this$0_ updates])) onUpdateReceivedWithId:[[ImActorModelModulesUpdatesInternalUsersFounded alloc] initWithJavaUtilList:[response getUsers] withAMCommandCallback:val$callback_]];
}


#line 104
- (void)onErrorWithAMRpcException:(AMRpcException *)e {
  
#line 105
  [((AMRpcException *) nil_chk(e)) printStackTrace];
  [this$0_->this$0_ runOnUiThreadWithJavaLangRunnable:[[ImActorModelModulesContacts_$3_$1_$2 alloc] initWithImActorModelModulesContacts_$3_$1:self]];
}

- (instancetype)initWithImActorModelModulesContacts_$3:(ImActorModelModulesContacts_$3 *)outer$
                                 withAMCommandCallback:(id<AMCommandCallback>)capture$0 {
  this$0_ = outer$;
  val$callback_ = capture$0;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelModulesContacts_$3_$1 *)other {
  [super copyAllFieldsTo:other];
  other->this$0_ = this$0_;
  other->val$callback_ = val$callback_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesContacts_$3_$1)

@implementation ImActorModelModulesContacts_$3_$1_$1


#line 93
- (void)run {
  
#line 94
  [((id<AMCommandCallback>) nil_chk(this$0_->val$callback_)) onResultWithId:[IOSObjectArray newArrayWithLength:0 type:AMUserVM_class_()]];
}

- (instancetype)initWithImActorModelModulesContacts_$3_$1:(ImActorModelModulesContacts_$3_$1 *)outer$ {
  this$0_ = outer$;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelModulesContacts_$3_$1_$1 *)other {
  [super copyAllFieldsTo:other];
  other->this$0_ = this$0_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesContacts_$3_$1_$1)

@implementation ImActorModelModulesContacts_$3_$1_$2


#line 108
- (void)run {
  
#line 109
  [((id<AMCommandCallback>) nil_chk(this$0_->val$callback_)) onResultWithId:[IOSObjectArray newArrayWithLength:0 type:AMUserVM_class_()]];
}

- (instancetype)initWithImActorModelModulesContacts_$3_$1:(ImActorModelModulesContacts_$3_$1 *)outer$ {
  this$0_ = outer$;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelModulesContacts_$3_$1_$2 *)other {
  [super copyAllFieldsTo:other];
  other->this$0_ = this$0_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesContacts_$3_$1_$2)

@implementation ImActorModelModulesContacts_$4


#line 121
- (void)startWithAMCommandCallback:(id<AMCommandCallback>)callback {
  
#line 122
  AMUser *user = [((id<DKKeyValueEngine>) nil_chk([this$0_ users])) getValueWithLong:val$uid_];
  if (user == nil) {
    [this$0_ runOnUiThreadWithJavaLangRunnable:[[ImActorModelModulesContacts_$4_$1 alloc] initWithAMCommandCallback:callback]];
    
#line 130
    return;
  }
  
#line 133
  [this$0_ requestWithImActorModelNetworkParserRequest:[[ImActorModelApiRpcRequestAddContact alloc] initWithInt:val$uid_ withLong:[((AMUser *) nil_chk(user)) getAccessHash]] withAMRpcCallback:[[ImActorModelModulesContacts_$4_$2 alloc] initWithImActorModelModulesContacts_$4:self withAMCommandCallback:callback]];
}

- (instancetype)initWithImActorModelModulesContacts:(ImActorModelModulesContacts *)outer$
                                            withInt:(jint)capture$0 {
  this$0_ = outer$;
  val$uid_ = capture$0;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelModulesContacts_$4 *)other {
  [super copyAllFieldsTo:other];
  other->this$0_ = this$0_;
  other->val$uid_ = val$uid_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesContacts_$4)

@implementation ImActorModelModulesContacts_$4_$1


#line 126
- (void)run {
  
#line 127
  [((id<AMCommandCallback>) nil_chk(val$callback_)) onErrorWithJavaLangException:[[AMRpcInternalException alloc] init]];
}

- (instancetype)initWithAMCommandCallback:(id<AMCommandCallback>)capture$0 {
  val$callback_ = capture$0;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelModulesContacts_$4_$1 *)other {
  [super copyAllFieldsTo:other];
  other->val$callback_ = val$callback_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesContacts_$4_$1)

@implementation ImActorModelModulesContacts_$4_$2


#line 135
- (void)onResultWithImActorModelNetworkParserResponse:(ImActorModelApiRpcResponseSeq *)response {
  
#line 136
  JavaUtilArrayList *uids = [[JavaUtilArrayList alloc] init];
  [uids addWithId:JavaLangInteger_valueOfWithInt_(this$0_->val$uid_)];
  ImActorModelApiBaseSeqUpdate *update = [[ImActorModelApiBaseSeqUpdate alloc] initWithInt:[((ImActorModelApiRpcResponseSeq *) nil_chk(response)) getSeq] withByteArray:[response getState] withInt:
#line 139
  ImActorModelApiUpdatesUpdateContactsAdded_HEADER withByteArray:[((ImActorModelApiUpdatesUpdateContactsAdded *) [[ImActorModelApiUpdatesUpdateContactsAdded alloc] initWithJavaUtilList:uids]) toByteArray]];
  [((ImActorModelModulesUpdates *) nil_chk([this$0_->this$0_ updates])) onUpdateReceivedWithId:update];
  [this$0_->this$0_ runOnUiThreadWithJavaLangRunnable:[[ImActorModelModulesContacts_$4_$2_$1 alloc] initWithImActorModelModulesContacts_$4_$2:self]];
}


#line 150
- (void)onErrorWithAMRpcException:(AMRpcException *)e {
  
#line 151
  [this$0_->this$0_ runOnUiThreadWithJavaLangRunnable:[[ImActorModelModulesContacts_$4_$2_$2 alloc] initWithImActorModelModulesContacts_$4_$2:self]];
}

- (instancetype)initWithImActorModelModulesContacts_$4:(ImActorModelModulesContacts_$4 *)outer$
                                 withAMCommandCallback:(id<AMCommandCallback>)capture$0 {
  this$0_ = outer$;
  val$callback_ = capture$0;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelModulesContacts_$4_$2 *)other {
  [super copyAllFieldsTo:other];
  other->this$0_ = this$0_;
  other->val$callback_ = val$callback_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesContacts_$4_$2)

@implementation ImActorModelModulesContacts_$4_$2_$1


#line 143
- (void)run {
  
#line 144
  [((id<AMCommandCallback>) nil_chk(this$0_->val$callback_)) onResultWithId:JavaLangBoolean_valueOfWithBoolean_(YES)];
}

- (instancetype)initWithImActorModelModulesContacts_$4_$2:(ImActorModelModulesContacts_$4_$2 *)outer$ {
  this$0_ = outer$;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelModulesContacts_$4_$2_$1 *)other {
  [super copyAllFieldsTo:other];
  other->this$0_ = this$0_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesContacts_$4_$2_$1)

@implementation ImActorModelModulesContacts_$4_$2_$2


#line 153
- (void)run {
  
#line 154
  [((id<AMCommandCallback>) nil_chk(this$0_->val$callback_)) onErrorWithJavaLangException:[[AMRpcInternalException alloc] init]];
}

- (instancetype)initWithImActorModelModulesContacts_$4_$2:(ImActorModelModulesContacts_$4_$2 *)outer$ {
  this$0_ = outer$;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelModulesContacts_$4_$2_$2 *)other {
  [super copyAllFieldsTo:other];
  other->this$0_ = this$0_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesContacts_$4_$2_$2)

@implementation ImActorModelModulesContacts_$5


#line 166
- (void)startWithAMCommandCallback:(id<AMCommandCallback>)callback {
  
#line 167
  AMUser *user = [((id<DKKeyValueEngine>) nil_chk([this$0_ users])) getValueWithLong:val$uid_];
  if (user == nil) {
    [this$0_ runOnUiThreadWithJavaLangRunnable:[[ImActorModelModulesContacts_$5_$1 alloc] initWithAMCommandCallback:callback]];
    
#line 175
    return;
  }
  
#line 178
  [this$0_ requestWithImActorModelNetworkParserRequest:[[ImActorModelApiRpcRequestRemoveContact alloc] initWithInt:val$uid_ withLong:[((AMUser *) nil_chk(user)) getAccessHash]] withAMRpcCallback:[[ImActorModelModulesContacts_$5_$2 alloc] initWithImActorModelModulesContacts_$5:self withAMCommandCallback:callback]];
}

- (instancetype)initWithImActorModelModulesContacts:(ImActorModelModulesContacts *)outer$
                                            withInt:(jint)capture$0 {
  this$0_ = outer$;
  val$uid_ = capture$0;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelModulesContacts_$5 *)other {
  [super copyAllFieldsTo:other];
  other->this$0_ = this$0_;
  other->val$uid_ = val$uid_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesContacts_$5)

@implementation ImActorModelModulesContacts_$5_$1


#line 171
- (void)run {
  
#line 172
  [((id<AMCommandCallback>) nil_chk(val$callback_)) onErrorWithJavaLangException:[[AMRpcInternalException alloc] init]];
}

- (instancetype)initWithAMCommandCallback:(id<AMCommandCallback>)capture$0 {
  val$callback_ = capture$0;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelModulesContacts_$5_$1 *)other {
  [super copyAllFieldsTo:other];
  other->val$callback_ = val$callback_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesContacts_$5_$1)

@implementation ImActorModelModulesContacts_$5_$2


#line 180
- (void)onResultWithImActorModelNetworkParserResponse:(ImActorModelApiRpcResponseSeq *)response {
  
#line 181
  JavaUtilArrayList *uids = [[JavaUtilArrayList alloc] init];
  [uids addWithId:JavaLangInteger_valueOfWithInt_(this$0_->val$uid_)];
  ImActorModelApiBaseSeqUpdate *update = [[ImActorModelApiBaseSeqUpdate alloc] initWithInt:[((ImActorModelApiRpcResponseSeq *) nil_chk(response)) getSeq] withByteArray:[response getState] withInt:
#line 184
  ImActorModelApiUpdatesUpdateContactsRemoved_HEADER withByteArray:[((ImActorModelApiUpdatesUpdateContactsRemoved *) [[ImActorModelApiUpdatesUpdateContactsRemoved alloc] initWithJavaUtilList:uids]) toByteArray]];
  [((ImActorModelModulesUpdates *) nil_chk([this$0_->this$0_ updates])) onUpdateReceivedWithId:update];
  [this$0_->this$0_ runOnUiThreadWithJavaLangRunnable:[[ImActorModelModulesContacts_$5_$2_$1 alloc] initWithImActorModelModulesContacts_$5_$2:self]];
}


#line 195
- (void)onErrorWithAMRpcException:(AMRpcException *)e {
  
#line 196
  [this$0_->this$0_ runOnUiThreadWithJavaLangRunnable:[[ImActorModelModulesContacts_$5_$2_$2 alloc] initWithImActorModelModulesContacts_$5_$2:self]];
}

- (instancetype)initWithImActorModelModulesContacts_$5:(ImActorModelModulesContacts_$5 *)outer$
                                 withAMCommandCallback:(id<AMCommandCallback>)capture$0 {
  this$0_ = outer$;
  val$callback_ = capture$0;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelModulesContacts_$5_$2 *)other {
  [super copyAllFieldsTo:other];
  other->this$0_ = this$0_;
  other->val$callback_ = val$callback_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesContacts_$5_$2)

@implementation ImActorModelModulesContacts_$5_$2_$1


#line 188
- (void)run {
  
#line 189
  [((id<AMCommandCallback>) nil_chk(this$0_->val$callback_)) onResultWithId:JavaLangBoolean_valueOfWithBoolean_(YES)];
}

- (instancetype)initWithImActorModelModulesContacts_$5_$2:(ImActorModelModulesContacts_$5_$2 *)outer$ {
  this$0_ = outer$;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelModulesContacts_$5_$2_$1 *)other {
  [super copyAllFieldsTo:other];
  other->this$0_ = this$0_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesContacts_$5_$2_$1)

@implementation ImActorModelModulesContacts_$5_$2_$2


#line 198
- (void)run {
  
#line 199
  [((id<AMCommandCallback>) nil_chk(this$0_->val$callback_)) onErrorWithJavaLangException:[[AMRpcInternalException alloc] init]];
}

- (instancetype)initWithImActorModelModulesContacts_$5_$2:(ImActorModelModulesContacts_$5_$2 *)outer$ {
  this$0_ = outer$;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelModulesContacts_$5_$2_$2 *)other {
  [super copyAllFieldsTo:other];
  other->this$0_ = this$0_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesContacts_$5_$2_$2)
