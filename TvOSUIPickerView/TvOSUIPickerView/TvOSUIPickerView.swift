//
//  TvOSUIPickerView.swift
//  TvOSUIPickerView
//
//  Created by David Cordero on 08.12.17.
//  Copyright © 2017 David Cordero. All rights reserved.
//

import UIKit

private let componentsStackSpacing = CGFloat(5)

public final class TvOSUIPickerView: UIView, ComponentViewDataSource, ComponentViewDelegate {
    
    public var dataSource: TvOSUIPickerViewDataSource?
    public var delegate: TvOSUIPickerViewDelegate?
    
    public private(set) var numberOfComponents: Int = 0
        
    public override init(frame: CGRect) {
        super.init(frame: frame)
        setUpView()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUpView()
    }
    
    override public func awakeFromNib() {
        super.awakeFromNib()
        setUpView()
    }
    
    public override func layoutSubviews() {
        super.layoutSubviews()
        setUpView()
    }

    public func view(forRow row: Int, forComponent component: Int) -> UIView? {
        guard component < componentsStackView.arrangedSubviews.count else { return nil}
        let componentView = componentsStackView.arrangedSubviews[component]

        
        return nil
    }
    
    // MARK: - Private
    
    private var componentsStackView: UIStackView!
    
    private func setUpView() {
        setUpComponentsStackView()
        setUpConstaints()
    }
    
    private func setUpComponentsStackView() {
        componentsStackView?.removeFromSuperview()
        componentsStackView = UIStackView()
        componentsStackView.distribution = .fillEqually
        componentsStackView.axis = .horizontal
        componentsStackView.alignment = .fill
        componentsStackView.spacing = componentsStackSpacing
        addSubview(componentsStackView)
        
        numberOfComponents = dataSource?.numberOfComponents(in: self) ?? 0
        for index in 0..<numberOfComponents {
            let componentView = ComponentView()
            componentView.index = index
            componentView.dataSource = self
            componentView.delegate = self
            componentsStackView.addArrangedSubview(componentView)
        }
    }
    
    private func setUpConstaints() {
        componentsStackView.translatesAutoresizingMaskIntoConstraints = false
        componentsStackView.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        componentsStackView.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
        componentsStackView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        componentsStackView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }
    
    // MARK: - ComponentViewDataSource
    
    func numberOfRowsIn(in componentView: ComponentView) -> Int {
        return dataSource?.pickerView(self, numberOfRowsInComponent: componentView.index) ?? 0
    }
    
    // MARK: - ComponentViewDelegate
    
    func componentView(_ componentView: ComponentView, titleForRow row: Int) -> String? {
        return delegate?.pickerView?(self, titleForRow: row, forComponent: componentView.index)
    }
    
    func componentView(_ componentView: ComponentView, didSelectRow row: Int) {
        delegate?.pickerView?(self, didSelectRow: row, inComponent: componentView.index)
    }
    
    func rowHeight(for componentView: ComponentView) -> CGFloat? {
        return delegate?.pickerView?(self, rowHeightForComponent: componentView.index)
    }
}
