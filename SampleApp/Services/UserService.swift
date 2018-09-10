//
//  UserService.swift
//  SampleApp
//
//  Created by ihsanmaul on 9/10/18.
//  Copyright © 2018 MyMacbook. All rights reserved.
//

import UIKit
import ObjectMapper
import RealmSwift

struct UserService {
    
    func getUserInfo() -> UserInfoModel {
        let jsonMock = Utility.fetchMockJsonForThe("userInfo")
        let userInfoModel = Mapper<UserInfoModel>().map(JSON: jsonMock as! [String : Any])
        return userInfoModel!
    }
    
    func login(_ loginModel: LoginModel) {
        let realm = try! Realm()
        try! realm.write {
            realm.add(loginModel, update: true)
        }
    }
}
