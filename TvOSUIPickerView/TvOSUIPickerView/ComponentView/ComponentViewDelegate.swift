//
//  ComponentViewDelegate.swift
//  TvOSUIPickerView
//
//  Created by David Cordero on 08.12.17.
//  Copyright © 2017 David Cordero. All rights reserved.
//

import Foundation

protocol ComponentViewDelegate: class {
    
    func componentView(_ componentView: ComponentView,
                       titleForRow row: Int) -> String?
    
    func componentView(_ componentView: ComponentView,
                       didSelectRow row: Int)
    
    func rowHeight(for componentView: ComponentView) -> CGFloat?
}
