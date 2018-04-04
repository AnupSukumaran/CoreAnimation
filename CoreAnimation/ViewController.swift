//
//  ViewController.swift
//  CoreAnimation
//
//  Created by Sukumar Anup Sukumaran on 27/03/18.
//  Copyright © 2018 AssaRadviewTech. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var passwordTextField: ShakingTextField!
    @IBOutlet weak var avatarImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        passwordTextField.delegate = self
        
        avatarImage.isUserInteractionEnabled = true
        
        let tapGestRec = UITapGestureRecognizer(target: self, action: #selector(ViewController.addPulse))
        tapGestRec.numberOfTapsRequired = 1
        avatarImage.addGestureRecognizer(tapGestRec)
    }
    
    @objc func addPulse() {
        let pulse = Pulsing(numberofPulses: 1, radius: 110, position: avatarImage.center)
        
        pulse.animationDuration = 0.8

        pulse.backgroundColor = UIColor.blue.cgColor
        
        self.view.layer.insertSublayer(pulse, below: avatarImage.layer)
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        passwordTextField.shake()
    }

   


}

