//
//  ViewController.swift
//  ios-swift-travel-app
//
//  Created by Harsha Vardhan Sannareddy on 01/02/20.
//  Copyright © 2020 Harsha Vardhan Sannareddy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var tableView = UITableView()
    
    lazy var featuredLocationData: [LocationModel] = {
         
         return LocationModel.featuredData
         
     }()
     
     lazy var recommendedLocationData: [LocationModel] = {
     
         return LocationModel.recommendData
         
     }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        
        self.navigationController?.navigationBar.prefersLargeTitles = true
        title = "Places"
        
        configureTableView()
        
    }
    
    func configureTableView(){
        view.addSubview(tableView)
        
        // set delegates
        setTableViewDelegates()
    
        // register cells
        tableView.register(FeaturedTableViewCell.self, forCellReuseIdentifier: "FeaturedCellIdentifier")
        tableView.register(RecommendedTableViewCell.self, forCellReuseIdentifier: "RecommendedCellIdentifier")
        
        
        tableView.tableFooterView = UIView()
        tableView.separatorStyle = .none
        
        // set constraints
        tableView.anchor(top: view.topAnchor, leading: view.leadingAnchor, bottom: view.bottomAnchor, trailing: view.trailingAnchor)
    }
    
    func setTableViewDelegates() {
        tableView.delegate = self
        tableView.dataSource = self
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        }
        return recommendedLocationData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "FeaturedCellIdentifier") as! FeaturedTableViewCell
            cell.topLocationsData = featuredLocationData
            return cell
            
        }
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "RecommendedCellIdentifier") as! RecommendedTableViewCell
        let location: LocationModel = recommendedLocationData[indexPath.row]
        cell.lImage.image = location.locationImage
        cell.title.text = location.locationTitle
        cell.subTitle.text = location.locationSubTitle
        cell.price.text = location.locationPrice
        
        //let cell = UITableViewCell()
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return CGFloat(396.0)
        }
        return CGFloat(125.0)
    }
    
}
