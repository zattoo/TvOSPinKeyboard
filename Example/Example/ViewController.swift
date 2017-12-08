//
//  ViewController.swift
//  Example
//
//  Created by David Cordero on 08.12.17.
//  Copyright © 2017 David Cordero. All rights reserved.
//

import UIKit
import TvOSUIPickerView

class ViewController: UIViewController, TvOSUIPickerViewDelegate, TvOSUIPickerViewDataSource {

    var pickerView: TvOSUIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
    }
    
    // MARK: - Private
    
    private func setUpView() {
        pickerView = TvOSUIPickerView(frame: view.bounds)
        pickerView.dataSource = self
        pickerView.delegate = self
        
        view.addSubview(pickerView)
    }
    
    // MARK: - TvOSUIPickerViewDelegate
    
    func pickerView(_ pickerView: TvOSUIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "Component \(component) - Row \(row)"
    }
    
    func pickerView(_ pickerView: TvOSUIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("Selected \(component) - Row \(row)")
    }
    
    // MARK: - TvOSUIPickerViewDataSource
    
    func pickerView(_ pickerView: TvOSUIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 30
    }
    
    func numberOfComponents(in: TvOSUIPickerView) -> Int {
        return 3
    }
    
    func pickerView(_ pickerView: TvOSUIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 400
    }
}
