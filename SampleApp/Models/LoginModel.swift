//
//  LoginModel.swift
//  SampleApp
//
//  Created by ihsanmaul on 9/10/18.
//  Copyright © 2018 MyMacbook. All rights reserved.
//

import UIKit
import ObjectMapper

public class LoginModel: NSObject, Mappable {
    
    public var email:String?
    public var password:String?
    
    public override init() {
        super.init()
    }
    
    public required convenience init?(map: Map) {
        self.init()
    }
    
    public func mapping(map: Map) {
        email <- map["email"]
        password <- map["password"]
    }
}
