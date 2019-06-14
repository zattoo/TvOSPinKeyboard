//
//  TvOSPinKeyboardViewDelegate.swift
//  TvOSPinKeyboard
//
//  Created by David Cordero on 13.07.17.
//  Copyright © 2017 Zattoo. All rights reserved.
//

import Foundation

@objc
public protocol TvOSPinKeyboardViewDelegate: class {
    
    @objc func pinKeyboardDidEndEditing(pinKeyboardVC: TvOSPinKeyboardViewController, pinCode: String)
}
