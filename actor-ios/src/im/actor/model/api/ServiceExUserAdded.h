//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/ServiceExUserAdded.java
//

#ifndef _ImActorModelApiServiceExUserAdded_H_
#define _ImActorModelApiServiceExUserAdded_H_

@class BSBserValues;
@class BSBserWriter;

#include "J2ObjC_header.h"
#include "im/actor/model/droidkit/bser/BserObject.h"

@interface ImActorModelApiServiceExUserAdded : BSBserObject {
}

- (instancetype)initWithInt:(jint)addedUid;

- (instancetype)init;

- (jint)getAddedUid;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiServiceExUserAdded)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiServiceExUserAdded)

#endif // _ImActorModelApiServiceExUserAdded_H_
