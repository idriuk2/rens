//
//  RensNativeView.swift
//  Rens
//
//  Created by Ivan Driuk on 1/15/19.
//  Copyright © 2019 Facebook. All rights reserved.
//

import UIKit

class CustomTopView: UIView {
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    self.addSubview(label)
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  lazy var label: UILabel = {
    let label = UILabel()
    label.text = "Swift Top label"
    label.textAlignment = .center
    label.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    return label
  }()
  
}

