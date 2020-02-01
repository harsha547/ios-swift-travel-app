//
//  TopLocationCollectionViewCell.swift
//  ios-swift-travel-app
//
//  Created by Harsha Vardhan Sannareddy on 01/02/20.
//  Copyright © 2020 Harsha Vardhan Sannareddy. All rights reserved.
//

import UIKit

class TopLocationCollectionViewCell: UICollectionViewCell {
    
    lazy var containerView: UIView = {
       let view = UIView()
        
      view.layer.backgroundColor = UIColor.white.cgColor
      view.layer.cornerRadius = CGFloat(7.0)
      view.layer.shadowOpacity = 0.7
      view.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
      view.layer.shadowRadius = CGFloat(5.0)

      view.addSubview(secondaryView)
      secondaryView.anchor(top: view.topAnchor, leading: view.leadingAnchor, bottom: view.bottomAnchor, trailing: view.trailingAnchor)
        
        return view
    }()
    
    // for corner radius and shadow
    lazy var secondaryView: UIView = {
        let view = UIView()
        
        view.layer.cornerRadius = CGFloat(7.0)
        view.layer.masksToBounds = true
        
        view.addSubview(recommendImage)
        recommendImage.anchor(top: view.topAnchor, leading: view.leadingAnchor, trailing: view.trailingAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 0))
        // aspect ratio of 69:53
        recommendImage.widthAnchor.constraint(equalTo: recommendImage.heightAnchor, multiplier: 69/53).isActive = true
        
        view.addSubview(title)
        title.anchor(top: recommendImage.bottomAnchor, leading: recommendImage.leadingAnchor, trailing: view.trailingAnchor, padding: .init(top: 15, left: 10, bottom: 0, right: 10))
        
        view.addSubview(subTitle)
        subTitle.anchor(top: title.bottomAnchor, leading: recommendImage.leadingAnchor, trailing: view.trailingAnchor, padding: .init(top: 5, left: 10, bottom: 0, right: 10))
        
        view.addSubview(price)
        price.anchor(top: subTitle.bottomAnchor, leading: recommendImage.leadingAnchor, trailing: view.trailingAnchor, padding: .init(top: 12, left: 10, bottom: 0, right: 10))
        
        return view
    }()
    
    
    let recommendImage: UIImageView = {
       let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        return iv
    }()
    
    let title: UILabel = {
        let label = UILabel()
        label.text = "Title"
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        return label
    }()
    
    let subTitle: UILabel = {
        let label = UILabel()
        label.text = "Subtitle"
        label.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        label.textColor =  .lightGray
        return label
    }()
    
    lazy var price:UILabel = {
       let label = UILabel()
        label.text = "Price"
        label.font = UIFont.systemFont(ofSize: 15)
       return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(containerView)
        containerView.anchor(top: topAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor, padding: .init(top: 10, left: 10, bottom: 10, right: 10))
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
