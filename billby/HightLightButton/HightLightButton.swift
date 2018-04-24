//
//  HightLightButton.swift
//  billby
//
//  Created by Macbook Air on 4/19/18.
//  Copyright © 2018 BeesightSoft. All rights reserved.
//

import UIKit
@IBDesignable
class HightLightButton: UIButton {
    @IBInspectable var hightLightColor : UIColor?
    @IBInspectable var noneColor : UIColor?
    
    override var isHighlighted: Bool {
        didSet {
            self.backgroundColor = isHighlighted ? hightLightColor : noneColor
        }
    }
    
    func hightLighButton(isHighLight: Bool) {
//        self.backgroundColor = ......
    }
}
	
