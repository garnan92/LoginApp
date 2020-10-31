//
//  RegisterController.swift
//  LoginApp
//
//  Created by Ranferi Dominguez Rios on 28/10/20.
//  Copyright © 2020 Ranferi Dominguez Rios. All rights reserved.
//

import Foundation
import UIKit

class RegisterController: RegisterControllerProtocol {
    var view: RegisterViewProtocol?
    
    func registerUser(_ name: String, pwd: String) {
        UserDefaults.standard.set(name, forKey: "name")
        UserDefaults.standard.set(pwd, forKey: "pwd")
        
        let alert = UIAlertController(title: "Registro Exitoso", message: "\(name.capitalized)", preferredStyle: .alert)
        view?.present(alert: alert)
    }
    
    
}
