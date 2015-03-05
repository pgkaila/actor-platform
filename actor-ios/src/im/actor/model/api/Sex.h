//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/Sex.java
//

#ifndef _ImActorModelApiSex_H_
#define _ImActorModelApiSex_H_

#include "J2ObjC_header.h"
#include "java/lang/Enum.h"

typedef NS_ENUM(NSUInteger, ImActorModelApiSex) {
  ImActorModelApiSex_UNKNOWN = 0,
  ImActorModelApiSex_MALE = 1,
  ImActorModelApiSex_FEMALE = 2,
  ImActorModelApiSex_UNSUPPORTED_VALUE = 3,
};

@interface ImActorModelApiSexEnum : JavaLangEnum < NSCopying > {
}

- (instancetype)initWithInt:(jint)value
               withNSString:(NSString *)__name
                    withInt:(jint)__ordinal;

- (jint)getValue;

+ (ImActorModelApiSexEnum *)parseWithInt:(jint)value;

+ (IOSObjectArray *)values;
FOUNDATION_EXPORT IOSObjectArray *ImActorModelApiSexEnum_values();

+ (ImActorModelApiSexEnum *)valueOfWithNSString:(NSString *)name;

FOUNDATION_EXPORT ImActorModelApiSexEnum *ImActorModelApiSexEnum_valueOfWithNSString_(NSString *name);
- (id)copyWithZone:(NSZone *)zone;

@end

FOUNDATION_EXPORT BOOL ImActorModelApiSexEnum_initialized;
J2OBJC_STATIC_INIT(ImActorModelApiSexEnum)

FOUNDATION_EXPORT ImActorModelApiSexEnum *ImActorModelApiSexEnum_parseWithInt_(jint value);

FOUNDATION_EXPORT ImActorModelApiSexEnum *ImActorModelApiSexEnum_values_[];

#define ImActorModelApiSexEnum_UNKNOWN ImActorModelApiSexEnum_values_[ImActorModelApiSex_UNKNOWN]
J2OBJC_ENUM_CONSTANT_GETTER(ImActorModelApiSexEnum, UNKNOWN)

#define ImActorModelApiSexEnum_MALE ImActorModelApiSexEnum_values_[ImActorModelApiSex_MALE]
J2OBJC_ENUM_CONSTANT_GETTER(ImActorModelApiSexEnum, MALE)

#define ImActorModelApiSexEnum_FEMALE ImActorModelApiSexEnum_values_[ImActorModelApiSex_FEMALE]
J2OBJC_ENUM_CONSTANT_GETTER(ImActorModelApiSexEnum, FEMALE)

#define ImActorModelApiSexEnum_UNSUPPORTED_VALUE ImActorModelApiSexEnum_values_[ImActorModelApiSex_UNSUPPORTED_VALUE]
J2OBJC_ENUM_CONSTANT_GETTER(ImActorModelApiSexEnum, UNSUPPORTED_VALUE)

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiSexEnum)

#endif // _ImActorModelApiSex_H_
