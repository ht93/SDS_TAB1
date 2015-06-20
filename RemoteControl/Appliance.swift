//
//  Appliance.swift
//  RemoteControl
//
//  Created by Zhang Lian on 25/5/15.
//  Copyright (c) 2015 Zhang Lian. All rights reserved.
//

import Foundation
import UIKit

struct Appliance {
    
    var type: String = ""
    var brand: String = ""
    var serialNumber: String = ""
    var imageName: String  = ""
    var status: String = ""
    
    static let TypeKey = "TypeKey"
    static let BrandKey = "BrandKey"
    static let SerialNumberKey = "SerialNumberKey"
    static let ImageNameKey = "ImageNameKey"
    static let StatusKey = "StatusKey"
    
    init(dictionary: [String:String]){
        self.type = dictionary[Appliance.TypeKey]!
        self.brand = dictionary[Appliance.BrandKey]!
        self.serialNumber = dictionary[Appliance.SerialNumberKey]!
        self.imageName = dictionary[Appliance.ImageNameKey]!
        self.status = dictionary[Appliance.StatusKey]!
    }
}

extension Appliance{
    
    static var allAppliances: [Appliance]{
        
        var applianceArray = [Appliance]()
        
        for d in Appliance.localApplianceData(){
            applianceArray.append(Appliance(dictionary: d))
        }
        
        
        
        return applianceArray
    }
    
    static func localApplianceData() -> [[String : String]]{
        return[
            [Appliance.TypeKey : "Door", Appliance.BrandKey : "Main Door", Appliance.SerialNumberKey : "000", Appliance.ImageNameKey: "door", Appliance.StatusKey : "ON"],
            [Appliance.TypeKey : "Television", Appliance.BrandKey : "Samsung", Appliance.SerialNumberKey : "111", Appliance.ImageNameKey: "television", Appliance.StatusKey : "ON"],
            [Appliance.TypeKey : "Fan", Appliance.BrandKey : "Panasonic", Appliance.SerialNumberKey : "222", Appliance.ImageNameKey : "fan", Appliance.StatusKey : "ON"]
        ]
    }
}


