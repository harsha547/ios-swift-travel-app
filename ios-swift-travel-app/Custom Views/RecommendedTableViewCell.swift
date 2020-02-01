//
//  RecommendedTableViewCell.swift
//  ios-swift-travel-app
//
//  Created by Harsha Vardhan Sannareddy on 01/02/20.
//  Copyright © 2020 Harsha Vardhan Sannareddy. All rights reserved.
//

import UIKit

class RecommendedTableViewCell: UITableViewCell {
    
    // for rounded corners
    lazy var containerView:UIView = {
        let view = UIView()
        
        view.addSubview(lImage)
        lImage.anchor(top: view.topAnchor, leading: view.leadingAnchor, bottom: view.bottomAnchor, padding: .init(top: 5, left: 5, bottom: 5, right: 0))
        // aspect ratio of 1:1
        lImage.widthAnchor.constraint(equalTo: lImage.heightAnchor, multiplier: 1/1).isActive = true
        
        view.addSubview(title)
        title.anchor(top: lImage.topAnchor, leading: lImage.trailingAnchor, trailing: view.trailingAnchor, padding: .init(top: 0, left: 10, bottom: 0, right: 5))
        
        view.addSubview(subTitle)
        subTitle.anchor(top: title.bottomAnchor, leading: title.leadingAnchor, trailing: view.trailingAnchor, padding: .init(top: 5, left: 0, bottom: 0, right: 5))
        
        view.addSubview(price)
        price.anchor(top: subTitle.bottomAnchor, leading: title.leadingAnchor, trailing: view.trailingAnchor, padding: .init(top: 12, left: 0, bottom: 0, right: 5))
        
        return view
    }()
    
    lazy var lImage:UIImageView = {
        let lv = UIImageView()
        lv.contentMode = .scaleAspectFill
        lv.clipsToBounds = true
        return lv
    }()
    
    lazy var title:UILabel = {
       let label = UILabel()
        label.text = "Title"
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.numberOfLines = 1
       return label
    }()
    
    lazy var subTitle:UILabel = {
       let label = UILabel()
        label.text = "SUBTITLE"
        label.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        label.textColor = .lightGray
       return label
    }()
    
    lazy var price:UILabel = {
       let label = UILabel()
        label.text = "price"
        label.font = UIFont.systemFont(ofSize: 15)
       return label
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(containerView)
        containerView.layer.backgroundColor = UIColor.white.cgColor
        containerView.layer.cornerRadius = CGFloat(7.0)
        containerView.layer.shadowOpacity = 0.7
        containerView.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        containerView.layer.shadowOffset = CGSize(width: 0, height: 2.0)
        containerView.layer.shadowRadius = CGFloat(5.0)
        
        containerView.anchor(top: topAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor, padding: .init(top: 10, left: 10, bottom: 10, right: 10))
        
         
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
