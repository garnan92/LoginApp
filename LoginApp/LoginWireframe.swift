//
//  LoginWireframe.swift
//  LoginApp
//
//  Created by Ranferi Dominguez Rios on 28/10/20.
//  Copyright © 2020 Ranferi Dominguez Rios. All rights reserved.
//

import Foundation
import UIKit

class LoginWireFrame: LoginWireframe {
    
    static func buildLoginModule() -> Any {
        let viewController = UIStoryboard(name: "Login", bundle: nil).instantiateViewController(identifier: "Login") as! LoginViewController
        let logincController = LoginController()
        
        logincController.view = viewController
        viewController.controller = logincController
        
        return viewController
    }

}
