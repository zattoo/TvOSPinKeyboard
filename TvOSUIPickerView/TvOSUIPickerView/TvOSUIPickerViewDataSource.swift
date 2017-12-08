//
//  TvOSPickerViewDataSource.swift
//  TvOSUIPickerView
//
//  Created by David Cordero on 08.12.17.
//  Copyright © 2017 David Cordero. All rights reserved.
//

import UIKit

public protocol TvOSUIPickerViewDataSource: class {
    
    func numberOfComponents(in: TvOSUIPickerView) -> Int
    
    func pickerView(_ pickerView: TvOSUIPickerView,
                    numberOfRowsInComponent component: Int) -> Int
}
