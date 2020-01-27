//
//  ViewController.swift
//  MVVMPattern
//
//  Created by rau4o on 1/25/20.
//  Copyright © 2020 rau4o. All rights reserved.
//

import UIKit

class ViewController: UIViewController,presentControllerDelegate {
    
    var mainView = MainView()
    
    func presenter(index: Int) {
        let controller = DetailViewController()
        let indexPath = self.mainView.tableView.indexPathForSelectedRow!
        let index = indexPath.row
        controller.messierViewModel = messierViewModel[index]
        navigationController?.pushViewController(controller, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        mainView.presenterDelegate = self
        view.backgroundColor = .white
    }

    func configureUI() {
        let m = MainView(frame: self.view.frame)
        self.mainView = m
        self.view.addSubview(mainView)
        mainView.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
    }
}

