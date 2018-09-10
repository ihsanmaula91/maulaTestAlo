//
//  ProfileViewController.swift
//  SampleApp
//
//  Created by ihsanmaul on 9/10/18.
//  Copyright © 2018 MyMacbook. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var profileContentView: UIView!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mappingUI()
    }
    
    func mappingUI() {
        profileContentView.layer.borderWidth = 1
        profileContentView.layer.borderColor = UIColor(hexString: "2a58c7").cgColor
        
        let userInfo = UserService().getUserInfo()
        profileImageView.image = UIImage(named: userInfo.profileImage!)
        nameLabel.text = userInfo.name ?? ""
        genderLabel.text = userInfo.gender ?? ""
        phoneLabel.text = userInfo.phone ?? ""
    }
}
