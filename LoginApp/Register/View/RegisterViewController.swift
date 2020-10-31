//
//  RegisterViewController.swift
//  LoginApp
//
//  Created by Ranferi Dominguez Rios on 28/10/20.
//  Copyright © 2020 Ranferi Dominguez Rios. All rights reserved.
//

import Foundation
import UIKit

class RegisterViewController: UIViewController, RegisterViewProtocol {
    var controller: RegisterControllerProtocol?
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var pwdTextField: UITextField!
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var contentView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardDidShow), name: UIResponder.keyboardDidShowNotification, object: nil)
    }
    
    
    @IBAction func registerButtonPressed(_ sender: Any) {
        guard let name = nameTextField.text,
            let pwd = pwdTextField.text else { return }
        
        controller?.registerUser(name, pwd: pwd)
    }
    
    func present(alert: UIAlertController) {
        present(alert, animated: true, completion: nil)
    }
    
    @objc func keyboardDidShow(notification: Notification) {
        self.scrollView.isScrollEnabled = true
        let info = notification.userInfo!
        let keyboardSize = (info[UIResponder.keyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue.size
        
        let contentInsets : UIEdgeInsets = UIEdgeInsets(top: 0.0, left: 0.0, bottom: keyboardSize!.height, right: 0.0)
        
        self.scrollView.contentInset = contentInsets
        self.scrollView.scrollIndicatorInsets = contentInsets
        
        var aRec: CGRect = self.view.frame
        aRec.size.height -= keyboardSize!.height
    }
    
    @objc func keyboardWillHide(notification: Notification) {
    
        
    }
}
