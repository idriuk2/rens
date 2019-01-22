//
//  RensNativeModule.swift
//  Rens
//
//  Created by Ivan Driuk on 1/14/19.
//  Copyright © 2019 Facebook. All rights reserved.
//

import Foundation

import SVProgressHUD
import SwiftMessages

@objc(RensNativeModule)
class RensNativeModule: RCTEventEmitter {
  
  private var count = 0
  func increment() {
    count += 1
    print("count is \(count)")
    
    sendEvent(withName: "onIncrement", body: ["count": count])
  }
  
  override func supportedEvents() -> [String]! {
    return ["onIncrement"]
  }
  
  override static func requiresMainQueueSetup() -> Bool {
    return true
  }
  
  override func constantsToExport() -> [AnyHashable : Any]! {
    return [
      "initialCount": 25,
      "number": 123.9,
      "string": "foo",
      "boolean": true,
      "array": [1, 22.2, "33"],
      "object": ["a": 1, "b": 2]
    ]
  }
  
  func getCount(_ callback: RCTResponseSenderBlock) {
    callback([count])
  }
  
  func decrement(
    _ resolve: RCTPromiseResolveBlock,
    rejecter reject: RCTPromiseRejectBlock
    ) -> Void {
    if (count == 0) {
      
      let error = NSError(domain: "", code: 200, userInfo: nil)
      reject("E_COUNT", "count cannot be negative", error)
    } else {
      count -= 1
      resolve("count was decremented")
    }
  }
  
  func showSpinner() {
    DispatchQueue.main.async {
      SVProgressHUD.show()
    }
  }
  
  func hideSpinner() {
    DispatchQueue.main.async {
      SVProgressHUD.dismiss()
    }
  }
  
  func showMessage() {
    DispatchQueue.main.async {
      SVProgressHUD.dismiss()
      // Instantiate a message view from the provided card view layout. SwiftMessages searches for nib
      // files in the main bundle first, so you can easily copy them into your project and make changes.
      let view = MessageView.viewFromNib(layout: .cardView)
      
      // Theme message elements with the warning style.
      view.configureTheme(.warning)
      
      // Add a drop shadow.
      view.configureDropShadow()
      
      view.button?.isHidden = true
      
      // Set message title, body, and icon. Here, we're overriding the default warning
      // image with an emoji character.
      let iconText = ["🤔", "😳", "🙄", "😶"].sm_random()!
      view.configureContent(title: "Warning", body: "Consider yourself warned.", iconText: iconText)
      
      var config = SwiftMessages.defaultConfig
      config.duration = .seconds(seconds: 10)
      
      // Show the message.
      SwiftMessages.show(config: config, view: view)
    }
  }
  
  func logMessage(_ message: NSString) {
    
//    DispatchQueue.main.async {
//      let view = CustomTopView()
//      view.frame = UIApplication.shared.keyWindow!.frame
//      UIApplication.shared.keyWindow!.addSubview(view)
//    }
    
    print("message is \(message)")
  }
  
}
