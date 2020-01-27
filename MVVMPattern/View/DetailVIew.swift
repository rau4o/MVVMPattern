//
//  DetailVIew.swift
//  MVVMPattern
//
//  Created by rau4o on 1/26/20.
//  Copyright © 2020 rau4o. All rights reserved.
//

import UIKit

class DetailVIew: UIView {
    
    var title = UILabel()
    var subtitle = UILabel()
    var updated = UILabel()
    
    var imageView = UIImageView()

    override init(frame: CGRect) {
        super.init(frame: frame)
        configureUI()
    }
    
    func configureUI() {
//        let stackView = UIStackView(arrangedSubviews: [title,subtitle,updated])
//        stackView.axis = .vertical
//        stackView.distribution = .fillEqually
//        stackView.spacing = 20
//        stackView.backgroundColor = .blue
        title.backgroundColor = .white
        title.textColor = .black
        addSubview(title)
        title.anchor(top: topAnchor, left: leftAnchor, right: rightAnchor, paddingTop: 100, paddingLeft: 50, paddingRight: 50, width: 100, height: 100)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
