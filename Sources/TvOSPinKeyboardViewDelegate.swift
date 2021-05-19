//
//  TvOSPinKeyboardViewDelegate.swift
//  TvOSPinKeyboard
//
//  Created by David Cordero on 13.07.17.
//  Copyright © 2017 Zattoo. All rights reserved.
//

import Foundation

public protocol TvOSPinKeyboardViewDelegate: AnyObject {
    
    func pinKeyboardDidEndEditing(pinCode: String)
    func pinKeyboardDidCancel()
}

public extension TvOSPinKeyboardViewDelegate {

    func pinKeyboardDidCancel() {
        // override by subclass
    }
}
