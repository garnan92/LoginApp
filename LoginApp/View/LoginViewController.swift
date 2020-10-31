//
//  LoginViewController.swift
//  LoginApp
//
//  Created by Ranferi Dominguez Rios on 28/10/20.
//  Copyright © 2020 Ranferi Dominguez Rios. All rights reserved.
//

import Foundation
import UIKit

class LoginViewController: UIViewController, LoginViewProtocol {
    var controller: LoginControllerProtocol?
    
    @IBOutlet weak var labelHello: UILabel!
    @IBOutlet weak var pwdInputText: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var contentView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
    }
    
    func present(alert: UIAlertController) {
        present(alert, animated: true, completion: nil)
    }
    
    @objc func keyboardWillHide(notification: Notification) {
        
        
    }
    
    @objc func keyboardWillShow(notification: Notification) {
        
    }
}
