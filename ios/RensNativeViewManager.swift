//
//  RensNativeViewManager.swift
//  Rens
//
//  Created by Ivan Driuk on 1/15/19.
//  Copyright © 2019 Facebook. All rights reserved.
//

import Foundation

@objc(RensNativeViewManager)
class RensNativeViewManager: RCTViewManager {
  override func view() -> UIView! {
    return RensNativeView()
  }
  
  override static func requiresMainQueueSetup() -> Bool {
    return true
  }
  
  func updateFromManager(_ node: NSNumber, count: NSNumber) {
    
    DispatchQueue.main.async {
      let component = self.bridge.uiManager.view(
        forReactTag: node
        ) as! RensNativeView
      component.update(value: count)
    }
  }
  
}
