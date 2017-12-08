//
//  ComponentViewDataSource.swift
//  TvOSUIPickerView
//
//  Created by David Cordero on 08.12.17.
//  Copyright © 2017 David Cordero. All rights reserved.
//

import Foundation

protocol ComponentViewDataSource {
    func numberOfRowsIn(in: ComponentView) -> Int
}
