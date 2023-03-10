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
        
        let backButton = UIBarButtonItem()
        backButton.tintColor = UIColor.gray
        self.navigationController?.navigationBar.topItem?.backBarButtonItem = backButton
        
        let tapLblCreateAccount = UITapGestureRecognizer(target: self, action: #selector(navigateToSignUpPage))
        self.lblButtonCreateAccount.addGestureRecognizer(tapLblCreateAccount)
        self.lblButtonCreateAccount.isUserInteractionEnabled = true
    }
    
    @objc func navigateToSignUpPage() {
        let vc = SignUpViewController(nibName: "SignUpView", bundle: nil)
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
