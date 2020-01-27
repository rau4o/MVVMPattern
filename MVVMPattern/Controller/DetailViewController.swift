//
//  DetailViewController.swift
//  MVVMPattern
//
//  Created by rau4o on 1/26/20.
//  Copyright © 2020 rau4o. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var detailView = DetailVIew()
    
    var messierViewModel: MessierViewModel?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red

        configureUI()
    }
    
    func configureUI() {
        let m = DetailVIew(frame: self.view.frame)
        self.detailView = m
        view.addSubview(detailView)
        detailView.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
        
        detailView.title.text = messierViewModel?.formalName
    }

}
