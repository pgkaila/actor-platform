//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/entity/ContentType.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/model/entity/ContentType.h"
#include "java/lang/IllegalArgumentException.h"

BOOL AMContentTypeEnum_initialized = NO;

AMContentTypeEnum *AMContentTypeEnum_values_[15];

@implementation AMContentTypeEnum

- (instancetype)initWithInt:(jint)value
               withNSString:(NSString *)__name
                    withInt:(jint)__ordinal {
  if (self = [super initWithNSString:__name withInt:__ordinal]) {
    self->value_ = value;
  }
  return self;
}

- (jint)getValue {
  return value_;
}

+ (AMContentTypeEnum *)fromValueWithInt:(jint)value {
  return AMContentTypeEnum_fromValueWithInt_(value);
}

IOSObjectArray *AMContentTypeEnum_values() {
  AMContentTypeEnum_init();
  return [IOSObjectArray arrayWithObjects:AMContentTypeEnum_values_ count:15 type:AMContentTypeEnum_class_()];
}
+ (IOSObjectArray *)values {
  return AMContentTypeEnum_values();
}

+ (AMContentTypeEnum *)valueOfWithNSString:(NSString *)name {
  return AMContentTypeEnum_valueOfWithNSString_(name);
}

AMContentTypeEnum *AMContentTypeEnum_valueOfWithNSString_(NSString *name) {
  AMContentTypeEnum_init();
  for (int i = 0; i < 15; i++) {
    AMContentTypeEnum *e = AMContentTypeEnum_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:name];
  return nil;
}

- (id)copyWithZone:(NSZone *)zone {
  return self;
}

+ (void)initialize {
  if (self == [AMContentTypeEnum class]) {
    AMContentTypeEnum_TEXT = [[AMContentTypeEnum alloc] initWithInt:2 withNSString:@"TEXT" withInt:0];
    AMContentTypeEnum_EMPTY = [[AMContentTypeEnum alloc] initWithInt:1 withNSString:@"EMPTY" withInt:1];
    AMContentTypeEnum_DOCUMENT = [[AMContentTypeEnum alloc] initWithInt:3 withNSString:@"DOCUMENT" withInt:2];
    AMContentTypeEnum_DOCUMENT_PHOTO = [[AMContentTypeEnum alloc] initWithInt:4 withNSString:@"DOCUMENT_PHOTO" withInt:3];
    AMContentTypeEnum_DOCUMENT_VIDEO = [[AMContentTypeEnum alloc] initWithInt:5 withNSString:@"DOCUMENT_VIDEO" withInt:4];
    AMContentTypeEnum_SERVICE = [[AMContentTypeEnum alloc] initWithInt:6 withNSString:@"SERVICE" withInt:5];
    AMContentTypeEnum_SERVICE_ADD = [[AMContentTypeEnum alloc] initWithInt:7 withNSString:@"SERVICE_ADD" withInt:6];
    AMContentTypeEnum_SERVICE_KICK = [[AMContentTypeEnum alloc] initWithInt:8 withNSString:@"SERVICE_KICK" withInt:7];
    AMContentTypeEnum_SERVICE_LEAVE = [[AMContentTypeEnum alloc] initWithInt:9 withNSString:@"SERVICE_LEAVE" withInt:8];
    AMContentTypeEnum_SERVICE_REGISTERED = [[AMContentTypeEnum alloc] initWithInt:10 withNSString:@"SERVICE_REGISTERED" withInt:9];
    AMContentTypeEnum_SERVICE_CREATED = [[AMContentTypeEnum alloc] initWithInt:11 withNSString:@"SERVICE_CREATED" withInt:10];
    AMContentTypeEnum_SERVICE_TITLE = [[AMContentTypeEnum alloc] initWithInt:12 withNSString:@"SERVICE_TITLE" withInt:11];
    AMContentTypeEnum_SERVICE_AVATAR = [[AMContentTypeEnum alloc] initWithInt:13 withNSString:@"SERVICE_AVATAR" withInt:12];
    AMContentTypeEnum_SERVICE_AVATAR_REMOVED = [[AMContentTypeEnum alloc] initWithInt:14 withNSString:@"SERVICE_AVATAR_REMOVED" withInt:13];
    AMContentTypeEnum_UNKNOWN_CONTENT = [[AMContentTypeEnum alloc] initWithInt:15 withNSString:@"UNKNOWN_CONTENT" withInt:14];
    J2OBJC_SET_INITIALIZED(AMContentTypeEnum)
  }
}

@end

AMContentTypeEnum *AMContentTypeEnum_fromValueWithInt_(jint value) {
  AMContentTypeEnum_init();
  switch (value) {
    default:
    case 1:
    return AMContentTypeEnum_EMPTY;
    case 2:
    return AMContentTypeEnum_TEXT;
    case 3:
    return AMContentTypeEnum_DOCUMENT;
    case 4:
    return AMContentTypeEnum_DOCUMENT_PHOTO;
    case 5:
    return AMContentTypeEnum_DOCUMENT_VIDEO;
    case 6:
    return AMContentTypeEnum_SERVICE;
    case 7:
    return AMContentTypeEnum_SERVICE_ADD;
    case 8:
    return AMContentTypeEnum_SERVICE_KICK;
    case 9:
    return AMContentTypeEnum_SERVICE_LEAVE;
    case 10:
    return AMContentTypeEnum_SERVICE_REGISTERED;
    case 11:
    return AMContentTypeEnum_SERVICE_CREATED;
    case 12:
    return AMContentTypeEnum_SERVICE_TITLE;
    case 13:
    return AMContentTypeEnum_SERVICE_AVATAR;
    case 14:
    return AMContentTypeEnum_SERVICE_AVATAR_REMOVED;
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMContentTypeEnum)
