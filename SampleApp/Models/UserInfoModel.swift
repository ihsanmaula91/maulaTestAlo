//
//  UserInfoModel.swift
//  SampleApp
//
//  Created by ihsanmaul on 9/10/18.
//  Copyright © 2018 MyMacbook. All rights reserved.
//

import UIKit
import ObjectMapper

public class UserInfoModel: NSObject, Mappable {
    
    var profileImage: String?
    var name: String?
    var gender: String?
    var phone: String?
    
    public override init() {
        super.init()
    }
    
    public convenience required init?(map: Map) {
        self.init()
    }
    
    public func mapping(map: Map) {
        profileImage <- map["profileImage"]
        name <- map["name"]
        gender <- map["gender"]
        phone <- map["phone"]
    }
}
