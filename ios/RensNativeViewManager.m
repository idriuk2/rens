//
//  RensNativeViewManager.m
//  Rens
//
//  Created by Ivan Driuk on 1/15/19.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "React/RCTViewManager.h"

@interface RCT_EXTERN_MODULE(RensNativeViewManager, RCTViewManager)
RCT_EXPORT_VIEW_PROPERTY(count, NSNumber)
RCT_EXPORT_VIEW_PROPERTY(onUpdate, RCTDirectEventBlock)
RCT_EXTERN_METHOD(
                  updateFromManager:(nonnull NSNumber *)node
                  count:(nonnull NSNumber *)count
                  )
@end
