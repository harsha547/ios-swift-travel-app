//
//  FeaturedTableViewCell.swift
//  ios-swift-travel-app
//
//  Created by Harsha Vardhan Sannareddy on 01/02/20.
//  Copyright © 2020 Harsha Vardhan Sannareddy. All rights reserved.
//

import UIKit

class FeaturedTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = UICollectionView.ScrollDirection.horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = UIColor.white
        collectionView.showsHorizontalScrollIndicator = true
        collectionView.showsVerticalScrollIndicator = false
        return collectionView
    }()

    var topLocationsData: [LocationModel] = [LocationModel]() {
         didSet {
             collectionView.reloadData()
         }
     }
   
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureCollectionView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    func configureCollectionView() {
        addSubview(collectionView)
        
        // set delegates
        collectionView.delegate = self
        collectionView.dataSource = self
        
        // register cells
        collectionView.register(TopLocationCollectionViewCell.self, forCellWithReuseIdentifier: "TopLocationCollectionViewCell")
        
        collectionView.anchor(top: topAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor, padding: .init(top: 10, left: 10, bottom: 10, right: 10))
        
        

    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return topLocationsData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TopLocationCollectionViewCell", for: indexPath) as! TopLocationCollectionViewCell
        let location = LocationModel.featuredData[indexPath.row]
        cell.recommendImage.image = location.locationImage
        cell.title.text = location.locationTitle
        cell.subTitle.text = location.locationSubTitle
        cell.price.text = location.locationPrice
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 345, height: 370)
    }
    
}


