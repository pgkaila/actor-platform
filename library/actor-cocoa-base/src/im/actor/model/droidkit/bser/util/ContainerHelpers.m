//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/droidkit/bser/util/ContainerHelpers.java
//

#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/droidkit/bser/util/ContainerHelpers.java"

#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/bser/util/ContainerHelpers.h"

BOOL ImActorModelDroidkitBserUtilContainerHelpers_initialized = NO;


#line 19
@implementation ImActorModelDroidkitBserUtilContainerHelpers

IOSBooleanArray * ImActorModelDroidkitBserUtilContainerHelpers_EMPTY_BOOLEANS_;
IOSIntArray * ImActorModelDroidkitBserUtilContainerHelpers_EMPTY_INTS_;
IOSLongArray * ImActorModelDroidkitBserUtilContainerHelpers_EMPTY_LONGS_;
IOSObjectArray * ImActorModelDroidkitBserUtilContainerHelpers_EMPTY_OBJECTS_;

+ (jint)binarySearchWithIntArray:(IOSIntArray *)array
                         withInt:(jint)size
                         withInt:(jint)value {
  return ImActorModelDroidkitBserUtilContainerHelpers_binarySearchWithIntArray_withInt_withInt_(array, size, value);
}


#line 45
+ (jint)binarySearchWithLongArray:(IOSLongArray *)array
                          withInt:(jint)size
                         withLong:(jlong)value {
  return ImActorModelDroidkitBserUtilContainerHelpers_binarySearchWithLongArray_withInt_withLong_(array, size, value);
}

- (instancetype)init {
  return [super init];
}

+ (void)initialize {
  if (self == [ImActorModelDroidkitBserUtilContainerHelpers class]) {
    ImActorModelDroidkitBserUtilContainerHelpers_EMPTY_BOOLEANS_ = [IOSBooleanArray newArrayWithLength:
#line 20
    0];
    ImActorModelDroidkitBserUtilContainerHelpers_EMPTY_INTS_ = [IOSIntArray newArrayWithLength:
#line 21
    0];
    ImActorModelDroidkitBserUtilContainerHelpers_EMPTY_LONGS_ = [IOSLongArray newArrayWithLength:
#line 22
    0];
    ImActorModelDroidkitBserUtilContainerHelpers_EMPTY_OBJECTS_ = [IOSObjectArray newArrayWithLength:
#line 23
    0 type:NSObject_class_()];
    J2OBJC_SET_INITIALIZED(ImActorModelDroidkitBserUtilContainerHelpers)
  }
}

@end

jint ImActorModelDroidkitBserUtilContainerHelpers_binarySearchWithIntArray_withInt_withInt_(IOSIntArray *array, jint size, jint value) {
  ImActorModelDroidkitBserUtilContainerHelpers_init();
  
#line 27
  jint lo = 0;
  jint hi = size - 1;
  
#line 30
  while (lo <= hi) {
    jint mid = URShift32((lo + hi), 1);
    jint midVal = IOSIntArray_Get(nil_chk(array), mid);
    
#line 34
    if (midVal < value) {
      lo = mid + 1;
    }
    else
#line 36
    if (midVal > value) {
      hi = mid - 1;
    }
    else {
      
#line 39
      return mid;
    }
  }
  return ~lo;
}

jint ImActorModelDroidkitBserUtilContainerHelpers_binarySearchWithLongArray_withInt_withLong_(IOSLongArray *array, jint size, jlong value) {
  ImActorModelDroidkitBserUtilContainerHelpers_init();
  
#line 46
  jint lo = 0;
  jint hi = size - 1;
  
#line 49
  while (lo <= hi) {
    jint mid = URShift32((lo + hi), 1);
    jlong midVal = IOSLongArray_Get(nil_chk(array), mid);
    
#line 53
    if (midVal < value) {
      lo = mid + 1;
    }
    else
#line 55
    if (midVal > value) {
      hi = mid - 1;
    }
    else {
      
#line 58
      return mid;
    }
  }
  return ~lo;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelDroidkitBserUtilContainerHelpers)
