//
//  ViewController.swift
//  TvOSPinKeyboardExample
//
//  Created by David Cordero on 08.08.17.
//  Copyright © 2017 David Cordero. All rights reserved.
//

import UIKit
import TvOSPinKeyboard

class ViewController: UIViewController, TvOSPinKeyboardViewDelegate {
    
    @IBOutlet private weak var pinLabel: UILabel!
    
    @IBAction func pinButtonWasPressed(_ sender: Any) {
        let pinKeyboard = TvOSPinKeyboardViewController(withTitle: "Introduce your PIN", message: "A pin code is required")
        pinKeyboard.buttonsFocusedBackgroundColor = .gray
        pinKeyboard.buttonsNormalBackgroundColor = .clear
        pinKeyboard.deleteButtonTitle = "←"
        
        let backgroundBlurEffectSyle = UIBlurEffect(style: .extraDark)
        pinKeyboard.backgroundView = UIVisualEffectView(effect: backgroundBlurEffectSyle)
        
        pinKeyboard.delegate = self
        pinKeyboard.callsCancelCompletion = true
        
        present(pinKeyboard, animated: true, completion: nil)
    }
    
    // MARK: - TvOSPinKeyboardViewDelegate
    
    func pinKeyboardDidEndEditing(pinCode: String) {
        pinLabel.text = "Your Pin Code is: " + pinCode
    }

    func pinKeyboardDidCancel() {
        pinLabel.text = "Entering Pin Code was cancelled."
    }
}
