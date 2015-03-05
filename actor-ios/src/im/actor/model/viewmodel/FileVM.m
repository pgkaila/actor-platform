//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/viewmodel/FileVM.java
//

#include "J2ObjC_source.h"
#include "im/actor/model/entity/FileLocation.h"
#include "im/actor/model/files/FileReference.h"
#include "im/actor/model/modules/Files.h"
#include "im/actor/model/modules/Modules.h"
#include "im/actor/model/modules/file/DownloadCallback.h"
#include "im/actor/model/viewmodel/FileVM.h"
#include "im/actor/model/viewmodel/FileVMCallback.h"

@interface AMFileVM () {
 @public
  ImActorModelModulesModules *modules_;
  AMFileLocation *location_;
  id<ImActorModelModulesFileDownloadCallback> callback_;
  id<AMFileVMCallback> vmCallback_;
}
@end

J2OBJC_FIELD_SETTER(AMFileVM, modules_, ImActorModelModulesModules *)
J2OBJC_FIELD_SETTER(AMFileVM, location_, AMFileLocation *)
J2OBJC_FIELD_SETTER(AMFileVM, callback_, id<ImActorModelModulesFileDownloadCallback>)
J2OBJC_FIELD_SETTER(AMFileVM, vmCallback_, id<AMFileVMCallback>)

@interface AMFileVM_OnDownloading () {
 @public
  jfloat progress_;
}
- (instancetype)initWithAMFileVM:(AMFileVM *)outer$
                       withFloat:(jfloat)progress;
@end

@interface AMFileVM_OnDownloaded () {
 @public
  id<ImActorModelFilesFileReference> fileReference_;
}
- (instancetype)initWithAMFileVM:(AMFileVM *)outer$
withImActorModelFilesFileReference:(id<ImActorModelFilesFileReference>)fileReference;
@end

J2OBJC_FIELD_SETTER(AMFileVM_OnDownloaded, fileReference_, id<ImActorModelFilesFileReference>)

@interface AMFileVM_$1 () {
 @public
  AMFileVM *this$0_;
}
@end

J2OBJC_FIELD_SETTER(AMFileVM_$1, this$0_, AMFileVM *)

@implementation AMFileVM

- (instancetype)initWithAMFileLocation:(AMFileLocation *)location
                           withBoolean:(jboolean)isAutostart
        withImActorModelModulesModules:(ImActorModelModulesModules *)modules
                  withAMFileVMCallback:(id<AMFileVMCallback>)vmCallback {
  if (self = [super init]) {
    self->modules_ = modules;
    self->location_ = location;
    self->vmCallback_ = vmCallback;
    self->callback_ = [[AMFileVM_$1 alloc] initWithAMFileVM:self];
    [((ImActorModelModulesFiles *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules)) getFilesModule])) bindFileWithAMFileLocation:location withBoolean:isAutostart withImActorModelModulesFileDownloadCallback:callback_];
  }
  return self;
}

- (void)onObjectReceivedWithId:(id)obj {
  if ([obj isKindOfClass:[AMFileVM_OnNotDownloaded class]]) {
    [((id<AMFileVMCallback>) nil_chk(vmCallback_)) onNotDownloaded];
  }
  else if ([obj isKindOfClass:[AMFileVM_OnDownloading class]]) {
    [((id<AMFileVMCallback>) nil_chk(vmCallback_)) onDownloadingWithFloat:[((AMFileVM_OnDownloading *) nil_chk(((AMFileVM_OnDownloading *) check_class_cast(obj, [AMFileVM_OnDownloading class])))) getProgress]];
  }
  else if ([obj isKindOfClass:[AMFileVM_OnDownloaded class]]) {
    [((id<AMFileVMCallback>) nil_chk(vmCallback_)) onDownloadedWithImActorModelFilesFileReference:[((AMFileVM_OnDownloaded *) nil_chk(((AMFileVM_OnDownloaded *) check_class_cast(obj, [AMFileVM_OnDownloaded class])))) getFileReference]];
  }
}

- (void)detach {
  [super detach];
  [((ImActorModelModulesFiles *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getFilesModule])) unbindFileWithLong:[((AMFileLocation *) nil_chk(location_)) getFileId] withImActorModelModulesFileDownloadCallback:callback_ withBoolean:NO];
}

- (void)copyAllFieldsTo:(AMFileVM *)other {
  [super copyAllFieldsTo:other];
  other->modules_ = modules_;
  other->location_ = location_;
  other->callback_ = callback_;
  other->vmCallback_ = vmCallback_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMFileVM)

@implementation AMFileVM_OnNotDownloaded

- (instancetype)initWithAMFileVM:(AMFileVM *)outer$ {
  return [super init];
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMFileVM_OnNotDownloaded)

@implementation AMFileVM_OnDownloading

- (instancetype)initWithAMFileVM:(AMFileVM *)outer$
                       withFloat:(jfloat)progress {
  if (self = [super init]) {
    self->progress_ = progress;
  }
  return self;
}

- (jfloat)getProgress {
  return progress_;
}

- (void)copyAllFieldsTo:(AMFileVM_OnDownloading *)other {
  [super copyAllFieldsTo:other];
  other->progress_ = progress_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMFileVM_OnDownloading)

@implementation AMFileVM_OnDownloaded

- (instancetype)initWithAMFileVM:(AMFileVM *)outer$
withImActorModelFilesFileReference:(id<ImActorModelFilesFileReference>)fileReference {
  if (self = [super init]) {
    self->fileReference_ = fileReference;
  }
  return self;
}

- (id<ImActorModelFilesFileReference>)getFileReference {
  return fileReference_;
}

- (void)copyAllFieldsTo:(AMFileVM_OnDownloaded *)other {
  [super copyAllFieldsTo:other];
  other->fileReference_ = fileReference_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMFileVM_OnDownloaded)

@implementation AMFileVM_$1

- (void)onNotDownloaded {
  [this$0_ postWithId:[[AMFileVM_OnNotDownloaded alloc] initWithAMFileVM:this$0_]];
}

- (void)onDownloadingWithFloat:(jfloat)progress {
  [this$0_ postWithId:[[AMFileVM_OnDownloading alloc] initWithAMFileVM:this$0_ withFloat:progress]];
}

- (void)onDownloadedWithImActorModelFilesFileReference:(id<ImActorModelFilesFileReference>)reference {
  [this$0_ postWithId:[[AMFileVM_OnDownloaded alloc] initWithAMFileVM:this$0_ withImActorModelFilesFileReference:reference]];
}

- (instancetype)initWithAMFileVM:(AMFileVM *)outer$ {
  this$0_ = outer$;
  return [super init];
}

- (void)copyAllFieldsTo:(AMFileVM_$1 *)other {
  [super copyAllFieldsTo:other];
  other->this$0_ = this$0_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMFileVM_$1)
