//
//  ViewCornerRadius.swift
//  billby
//
//  Created by Macbook Air on 4/18/18.
//  Copyright © 2018 BeesightSoft. All rights reserved.
//

import UIKit

@IBDesignable
class ViewCornerRadius: UIView {
    
    @IBInspectable var radius: CGFloat = 0.0 {
        didSet {
            self.layer.cornerRadius = radius
            self.layer.masksToBounds = true
        }
    }
    
    @IBInspectable var withBorder: CGFloat = 0.0 {
        didSet {
            self.layer.borderWidth = withBorder
        }
    }
    
    @IBInspectable var colorBorder: UIColor = UIColor( red: 0.5, green: 0.5, blue:0, alpha: 1.0 ){
        didSet {
            self.layer.borderColor = colorBorder.cgColor
        }
    }
}


