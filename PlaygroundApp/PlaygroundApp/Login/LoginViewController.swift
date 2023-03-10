//
//  LoginViewController.swift
//  PlaygroundApp
//
//  Created by Learning on 10/03/23.
//

import Foundation
import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var lblButtonCreateAccount: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.setHidesBackButton(true, animated: true)
        
        self.view.isUserInteractionEnabled = true
        let tap = UITapGestureRecognizer(target: self, action: #selector(navigateToSignUpPage))
        self.view.addGestureRecognizer(tap)
    }
    
    @objc func navigateToSignUpPage() {
        let vc = SignUpViewController(nibName: "SignUpView", bundle: nil)
        self.navigationController?.pushViewController(vc, animated: true)
    }

}
