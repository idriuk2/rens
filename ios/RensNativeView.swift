//
//  RensNativeView.swift
//  Rens
//
//  Created by Ivan Driuk on 1/15/19.
//  Copyright © 2019 Facebook. All rights reserved.
//

import UIKit
//import SVProgressHUD

class RensNativeView: UIView {
  
  var count : NSNumber = 0 {
    didSet {
      button.setTitle(String(describing: count), for: .normal)
    }
  }
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    self.addSubview(button)
    increment()
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  var onUpdate: RCTDirectEventBlock?
  
  lazy var button: UIButton = {
    let b = UIButton.init(type: UIButtonType.system)
    b.titleLabel?.font = UIFont.systemFont(ofSize: 50)
    b.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    b.addTarget(
      self,
      action: #selector(increment),
      for: .touchUpInside
    )
    let longPress = UILongPressGestureRecognizer(
      target: self,
      action: #selector(sendUpdate(_:))
    )
    b.addGestureRecognizer(longPress)
    return b
  }()
  
  func sendUpdate(_ gesture: UILongPressGestureRecognizer) {
    if gesture.state == .began {
      //ProgressHUD.showSuccess("Correct")
      //SVProgressHUD.show()
      if onUpdate != nil {
        onUpdate!(["count": count])
      }
    }
  }
  
  func update(value: NSNumber) {
    //SVProgressHUD.dismiss()
    count = value
  }
  
  func increment() {
    
    count = count.intValue + 1 as NSNumber
  }
  
}

