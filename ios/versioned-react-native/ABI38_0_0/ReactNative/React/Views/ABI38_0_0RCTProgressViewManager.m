/*
 * Copyright (c) Facebook, Inc. and its affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

#import "ABI38_0_0RCTProgressViewManager.h"

#import "ABI38_0_0RCTConvert.h"

@implementation ABI38_0_0RCTConvert (ABI38_0_0RCTProgressViewManager)

ABI38_0_0RCT_ENUM_CONVERTER(UIProgressViewStyle, (@{
  @"default": @(UIProgressViewStyleDefault),
#if !TARGET_OS_TV
  @"bar": @(UIProgressViewStyleBar),
#endif
}), UIProgressViewStyleDefault, integerValue)

@end

@implementation ABI38_0_0RCTProgressViewManager

ABI38_0_0RCT_EXPORT_MODULE()

- (UIView *)view
{
  return [UIProgressView new];
}

ABI38_0_0RCT_EXPORT_VIEW_PROPERTY(progressViewStyle, UIProgressViewStyle)
ABI38_0_0RCT_EXPORT_VIEW_PROPERTY(progress, float)
ABI38_0_0RCT_EXPORT_VIEW_PROPERTY(progressTintColor, UIColor)
ABI38_0_0RCT_EXPORT_VIEW_PROPERTY(trackTintColor, UIColor)
ABI38_0_0RCT_EXPORT_VIEW_PROPERTY(progressImage, UIImage)
ABI38_0_0RCT_EXPORT_VIEW_PROPERTY(trackImage, UIImage)

@end
