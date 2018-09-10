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
    
    /** Instance variable for DRIValidate()*/
    let validate = Validate()
    
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
        let isValidEmail = validate.validationEmail(email: emailTextField.text!)
        let isValidPassword = validate.validationPassword(password: passwordTextField.text!)
        if isValidEmail == ValidType.success && isValidPassword == ValidType.success {
            (UIApplication.shared.delegate as! AppDelegate).setupTabBarController()
        } else {
            var message = "Sorry, there’s been a problem completing your request. Please try again later."
            if isValidEmail == ValidType.empty || isValidPassword == ValidType.empty {
                message = "Please enter your email or password."
            } else if isValidEmail == ValidType.format {
                message = "Invalid email format, the valid format is “abc@xyz.com."
            } else if isValidPassword == ValidType.format {
                 message = "Invalid password format, it has to be in this format: 8-30 characters, alphanumeric with at least one capital letter, optional special characters."
            }
            showAlert(message)
        }
    }
    
    func showAlert(_ message : String){
        let alertController = UIAlertController(title: "", message: message, preferredStyle: UIAlertControllerStyle.alert)
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default) {
            (result : UIAlertAction) -> Void in}
        
        alertController.addAction(okAction)
        self.present(alertController, animated: true, completion: nil)
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
