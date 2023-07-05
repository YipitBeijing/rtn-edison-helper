#import "RTNHelperSpec.h"
#import "RTNHelper.h"

@implementation RTNHelper

RCT_EXPORT_MODULE(RTNHelper)

RCT_REMAP_METHOD(transmitString, strA:(NSString *)a
                withResolver:(RCTPromiseResolveBlock) resolve
                withRejecter:(RCTPromiseRejectBlock) reject)
{
    NSString *result = [NSString stringWithFormat:@"%@",a];
    resolve(result);
}

- (std::shared_ptr<facebook::react::TurboModule>)getTurboModule:
    (const facebook::react::ObjCTurboModule::InitParams &)params
{
    return std::make_shared<facebook::react::NativeHelperSpecJSI>(params);
}

@end