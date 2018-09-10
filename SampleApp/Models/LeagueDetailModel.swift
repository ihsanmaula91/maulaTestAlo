//
//  LeagueDetailModel.swift
//  SampleApp
//
//  Created by ihsanmaul on 9/10/18.
//  Copyright © 2018 MyMacbook. All rights reserved.
//

import UIKit
import ObjectMapper

class LeagueDetailModel: NSObject, Mappable {
    
    var imageList = [String]()
    
    public override init() {
        super.init()
    }
    
    public required convenience init?(map: Map) {
        self.init()
    }
    
    public func mapping(map: Map) {
        imageList <- map["imageList"]
    }
    
    
}
