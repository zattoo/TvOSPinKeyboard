//
//  ComponentView.swift
//  TvOSUIPickerView
//
//  Created by David Cordero on 08.12.17.
//  Copyright © 2017 David Cordero. All rights reserved.
//

import UIKit

class ComponentView: UIView, UITableViewDataSource, UITableViewDelegate {
    
    var dataSource: ComponentViewDataSource?
    var delegate: ComponentViewDelegate?
    var index: Int = 0
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUpView()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setUpView()
    }
    
    // MARK: - Private
    
    private var tableView: UITableView!

    private func setUpView() {
        tableView?.removeFromSuperview()
        tableView = UITableView(frame: bounds)
        tableView.dataSource = self
        tableView.delegate = self
        
        if let rowHeight = delegate?.rowHeight(for: self) {
            tableView.rowHeight = rowHeight
        }
        
        addSubview(tableView)
    }
    
    // MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource?.numberOfRowsIn(in: self) ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") ?? UITableViewCell(style: .default, reuseIdentifier: "cell")
        cell.textLabel?.text = delegate?.componentView(self, titleForRow: indexPath.row)
        
        return cell
    }
    
    // MARK: - UITableViewDelegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        delegate?.componentView(self, didSelectRow: indexPath.row)
    }
}
