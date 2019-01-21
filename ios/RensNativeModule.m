//
//  RensNativeModule.m
//  Rens
//
//  Created by Ivan Driuk on 1/14/19.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import "Foundation/Foundation.h"
#import <React/RCTBridgeModule.h>
#import "React/RCTEventEmitter.h"
@interface RCT_EXTERN_MODULE(RensNativeModule, RCTEventEmitter)

RCT_EXTERN_METHOD(increment)
RCT_EXTERN_METHOD(getCount: (RCTResponseSenderBlock)callback)

RCT_EXTERN_METHOD(
                  decrement: (RCTPromiseResolveBlock)resolve
                  rejecter: (RCTPromiseRejectBlock)reject
                  )

RCT_EXTERN_METHOD(showSpinner)
RCT_EXTERN_METHOD(hideSpinner)
RCT_EXTERN_METHOD(showMessage)

RCT_EXTERN_METHOD(logMessage: (NSString)message)

@end
