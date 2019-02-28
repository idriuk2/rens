//
//  TestCardView.swift
//  Rens
//
//  Created by Ivan Driuk on 1/22/19.
//  Copyright © 2019 Facebook. All rights reserved.
//

import UIKit

class TestCardView: UIView {

    @IBOutlet var contentView: UIView!
    @IBOutlet weak var mainLabel: UILabel!
    
    override init(frame: CGRect) {
    super.init(frame: frame)
    commonInit()
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    commonInit()
  }
  
  private func commonInit() {
    Bundle.main.loadNibNamed("TestCardView", owner: self, options: nil)
    addSubview(contentView)
    contentView.frame = self.bounds
    contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
  }

}
