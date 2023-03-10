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
    
    @IBOutlet weak var btnBack: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.setHidesBackButton(true, animated: true)
        
        let tapLblCreateAccount = UITapGestureRecognizer(target: self, action: #selector(navigateToSignUpPage))
        self.lblButtonCreateAccount.addGestureRecognizer(tapLblCreateAccount)
        self.lblButtonCreateAccount.isUserInteractionEnabled = true
        
        
        let tapBtnBack = UITapGestureRecognizer(target: self, action: #selector(navigateBack))
        self.btnBack.addGestureRecognizer(tapBtnBack)
        self.btnBack.isUserInteractionEnabled = true
    }
    
    @objc func navigateToSignUpPage() {
        let vc = SignUpViewController(nibName: "SignUpView", bundle: nil)
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func navigateBack() {
        self.navigationController?.popViewController(animated: true)
    }

}
