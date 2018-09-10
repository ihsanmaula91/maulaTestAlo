//
//  Validate.swift
//  SampleApp
//
//  Created by ihsanmaul on 9/10/18.
//  Copyright © 2018 MyMacbook. All rights reserved.
//

import UIKit

public enum ValidType {
    case empty
    case format
    case success
}

public class Validate: NSObject {

    public func validationEmail(email: String) -> ValidType {
        if email.isEmpty {
            return ValidType.empty
        } else if !isValidEmail(email: email) {
            return ValidType.format
        } else {
            return ValidType.success
        }
    }
    
    func isValidEmail(email: String) -> Bool {
        let emailTest = checkRegex(data: email, regex: "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}")
        return emailTest
    }
    
    public func validationPassword(password: String) -> ValidType {
        if password.isEmpty {
            return ValidType.empty
        } else if !isValidPassword(password: password) {
            return ValidType.format
        } else {
            return ValidType.success
        }
    }
    
    func isValidPassword(password: String) -> Bool {
        let passwordTest = checkRegex(data: password, regex: "^(?=.*?[A-Z])(?=.*?[0-9])(?=.*?[a-z]).{8,}$")
        return passwordTest
    }
    
    func checkRegex(data: String, regex: String) -> Bool {
        let test = NSPredicate(format: "SELF MATCHES %@", regex)
        return test.evaluate(with: data)
    }
}
