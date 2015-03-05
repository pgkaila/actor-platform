//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/updates/UpdateGroupUserKick.java
//

#ifndef _ImActorModelApiUpdatesUpdateGroupUserKick_H_
#define _ImActorModelApiUpdatesUpdateGroupUserKick_H_

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Update.h"

#define ImActorModelApiUpdatesUpdateGroupUserKick_HEADER 24

@interface ImActorModelApiUpdatesUpdateGroupUserKick : ImActorModelNetworkParserUpdate {
}

+ (ImActorModelApiUpdatesUpdateGroupUserKick *)fromBytesWithByteArray:(IOSByteArray *)data;

- (instancetype)initWithInt:(jint)groupId
                   withLong:(jlong)rid
                    withInt:(jint)uid
                    withInt:(jint)kickerUid
                   withLong:(jlong)date;

- (instancetype)init;

- (jint)getGroupId;

- (jlong)getRid;

- (jint)getUid;

- (jint)getKickerUid;

- (jlong)getDate;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

- (jint)getHeaderKey;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiUpdatesUpdateGroupUserKick)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT ImActorModelApiUpdatesUpdateGroupUserKick *ImActorModelApiUpdatesUpdateGroupUserKick_fromBytesWithByteArray_(IOSByteArray *data);

J2OBJC_STATIC_FIELD_GETTER(ImActorModelApiUpdatesUpdateGroupUserKick, HEADER, jint)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiUpdatesUpdateGroupUserKick)

#endif // _ImActorModelApiUpdatesUpdateGroupUserKick_H_
