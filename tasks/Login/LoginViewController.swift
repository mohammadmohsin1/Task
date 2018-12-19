//
//  LoginViewController.swift
//  tasks
//
//  Created by RedBeard on 18/12/2018.
//  Copyright © 2018 RedBeard. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    // MARK: - Variables & Constants
    
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    
    enum genders: String {
        case male
        case female
        case transgender
    }
    
    // MARK: - UIViewController Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllerUI()
    }
    
    // MARK: - UIViewController Helper Methods
    
    func setupNavigationBarUI() {
    }
    
    func setupViewControllerUI() {
        emailTextField.leftViewMode = .always
        passwordTextField.leftViewMode = .always
        
        let emailImage = UIImage(named: "emailIcon")
        let emailLeftView = UIImageView(image: emailImage)
        emailTextField.leftView = emailLeftView
        passwordTextField.leftView = UIImageView(image: #imageLiteral(resourceName: "passwordIcon"))
    }
}
