//
//  RegisterWireFrame.swift
//  LoginApp
//
//  Created by Ranferi Dominguez Rios on 28/10/20.
//  Copyright © 2020 Ranferi Dominguez Rios. All rights reserved.
//

import Foundation
import UIKit

class RegisterWireFrame: RegisterWireframe {
    
    static func buildRegisterModule() -> Any {
        let view = UIStoryboard(name: "Register", bundle: nil).instantiateViewController(identifier: "Register") as! RegisterViewController
        let controller = RegisterController()
        
        controller.view = view
        view.controller = controller
        
        return view
    }
}
