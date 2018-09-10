//
//  Utility.swift
//  SampleApp
//
//  Created by ihsanmaul on 9/10/18.
//  Copyright © 2018 MyMacbook. All rights reserved.
//

import UIKit

import UIKit

open class Utility: NSObject {
    
    /**
     Fetch the MockJson from json files
     - reutrns json object
     */
    public class func fetchMockJsonForThe(_ jsonName:String) -> AnyObject?{
        if let jsonPath = Bundle.main.path(forResource:jsonName, ofType: "json"){
            do {
                let jsonData = try NSData(contentsOfFile: jsonPath, options: NSData.ReadingOptions.mappedIfSafe)
                let object = try JSONSerialization.jsonObject(with: jsonData as Data, options: .allowFragments)
                //if let jsonDictionary = object as? [String: AnyObject] {
                return object as AnyObject?
                //}
            }catch {
                // Handle Error
                print("Caught an error : \(error.localizedDescription)")
            }
        }
        return nil
    }
}
