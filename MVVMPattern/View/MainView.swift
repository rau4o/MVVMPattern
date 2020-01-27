//
//  MainView.swift
//  MVVMPattern
//
//  Created by rau4o on 1/26/20.
//  Copyright © 2020 rau4o. All rights reserved.
//

import UIKit

protocol presentControllerDelegate {
    func presenter(index: Int)
}

class MainView: UIView {
    
    let tableView = UITableView()
    
    var presenterDelegate: presentControllerDelegate?

    override init(frame: CGRect) {
        super.init(frame: frame)
        configureUI()
    }
    
    func configureUI() {
        addSubview(tableView)
        tableView.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellId")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension MainView: UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messierViewModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
//        cell.imageView?.image = UIImage(named: messierViewModel[indexPath.row].thumbnail)
        cell.textLabel?.text = messierViewModel[indexPath.row].formalName
        cell.detailTextLabel?.text = messierViewModel[indexPath.row].commonName
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenterDelegate?.presenter(index: indexPath.row)
//        tableView.deselectRow(at: indexPath, animated: true)
    }
}

