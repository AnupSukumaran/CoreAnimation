//
//  ShakingTextField.swift
//  CoreAnimation
//
//  Created by Sukumar Anup Sukumaran on 27/03/18.
//  Copyright © 2018 AssaRadviewTech. All rights reserved.
//

import UIKit

class ShakingTextField: UITextField {

    func shake() {
        
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.05
        animation.repeatCount = 5
        animation.autoreverses = true
        animation.fromValue = NSValue(cgPoint: CGPoint(x: self.center.x - 14, y: self.center.y))
        animation.toValue = NSValue(cgPoint: CGPoint(x: self.center.x + 14, y: self.center.y))
        
        self.layer.add(animation, forKey: "position")
    }

}
