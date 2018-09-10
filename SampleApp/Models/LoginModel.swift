//
//  LoginModel.swift
//  SampleApp
//
//  Created by ihsanmaul on 9/10/18.
//  Copyright © 2018 MyMacbook. All rights reserved.
//

import UIKit
import ObjectMapper
import RealmSwift

public class LoginModel: Object, Mappable {
    
    public var email:String?
    public var password:String?
    @objc open dynamic var userId = 001
    
    public required convenience init?(map: Map) {
        self.init()
    }
    
    override open static func primaryKey() -> String {
        return "userId"
    }
    
    public func mapping(map: Map) {
        email <- map["email"]
        password <- map["password"]
    }
}
