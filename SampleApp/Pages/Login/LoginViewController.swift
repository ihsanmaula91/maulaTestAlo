//
//  LoginViewController.swift
//  SampleApp
//
//  Created by ihsanmaul on 9/10/18.
//  Copyright © 2018 MyMacbook. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var loginContentView: UIView!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        loginContentView.layer.borderWidth = 1
        loginContentView.layer.borderColor = UIColor(hexString: "2a58c7").cgColor
        emailTextField.layer.borderWidth = 1
        emailTextField.layer.borderColor = UIColor(hexString: "2a58c7").cgColor
        passwordTextField.layer.borderWidth = 1
        passwordTextField.layer.borderColor = UIColor(hexString: "2a58c7").cgColor
    }
    
    @IBAction func loginButtonClicked(_ sender: Any) {
        (UIApplication.shared.delegate as! AppDelegate).setupTabBarController()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
