//
//  TvOSUIPickerViewDelegate.swift
//  TvOSUIPickerView
//
//  Created by David Cordero on 08.12.17.
//  Copyright © 2017 David Cordero. All rights reserved.
//

import UIKit

@objc
public protocol TvOSUIPickerViewDelegate: class {
    
    @objc
    optional func pickerView(_ pickerView: TvOSUIPickerView,
                             titleForRow row: Int,
                             forComponent component: Int) -> String?
    
    @objc
    optional func pickerView(_ pickerView: TvOSUIPickerView,
                             didSelectRow row: Int,
                             inComponent component: Int)
    
    @objc
    optional func pickerView(_ pickerView: TvOSUIPickerView,
                             rowHeightForComponent component: Int) -> CGFloat
}
