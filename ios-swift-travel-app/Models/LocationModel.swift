//
//  LocationModel.swift
//  ios-swift-travel-app
//
//  Created by Harsha Vardhan Sannareddy on 01/02/20.
//  Copyright © 2020 Harsha Vardhan Sannareddy. All rights reserved.
//

import UIKit

class LocationModel {
    
    var locationTitle: String
    var locationSubTitle: String
    var locationPrice: String
    var locationImage: UIImage
    
    init(locationTitle: String, locationSubTitle: String, locationPrice: String, locationImage: UIImage) {
        self.locationTitle = locationTitle
        self.locationSubTitle = locationSubTitle
        self.locationPrice = locationPrice
        self.locationImage = locationImage
    }
    
    
    static let featuredData: [LocationModel] = [
        LocationModel(locationTitle: "Clifton Beach Apartment", locationSubTitle: "PRIVATE 1 ROOM", locationPrice: "$104 per night", locationImage: UIImage(named: "1bedapartment")!),
        LocationModel(locationTitle: "Mediteranean Villa Apartment", locationSubTitle: "ENTIRE VILLA 4 BEDS", locationPrice: "$168 per night", locationImage: UIImage(named: "mediteraneanhome")!),
        LocationModel(locationTitle: "City Penthouse", locationSubTitle: "ENTIRE APARTMENT", locationPrice: "$119 per night", locationImage: UIImage(named: "citypenthouse")!)
    ]
    
    static let recommendData: [LocationModel] = [
        LocationModel(locationTitle: "Lake View Apartment", locationSubTitle: "PRIVATE 2 ROOMS", locationPrice: "$110 per night", locationImage: UIImage(named: "lakeviewapartment")!),
        LocationModel(locationTitle: "Stylish Apartment", locationSubTitle: "PRIVATE 1 ROOM", locationPrice: "$95 per night", locationImage: UIImage(named: "stylishapartment")!),
        LocationModel(locationTitle: "Small Room", locationSubTitle: "PRIVATE 1 ROOM", locationPrice: "$70 per night", locationImage: UIImage(named: "smallroom")!)
    ]
    
}
