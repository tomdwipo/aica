//
//  SignUpViewController.swift
//  PlaygroundApp
//
//  Created by Learning on 10/03/23.
//

import Foundation
import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var btnBack: UIImageView!
    
    @IBOutlet weak var textFieldName: UITextField!
    @IBOutlet weak var textFieldEmail: UITextField!
    @IBOutlet weak var textFieldPhoneNumber: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.setHidesBackButton(true, animated: true)
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(navigateBack))
        self.btnBack.addGestureRecognizer(tap)
        self.btnBack.isUserInteractionEnabled = true
        
        
    }
    
    @objc func navigateBack() {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func btnRegisterAccount(_ sender: Any) {
        let name = "Nama: \(textFieldName.text ?? "")"
        let email = "Email: \(textFieldEmail.text ?? "")"
        let phone = "Phone: \(textFieldPhoneNumber.text ?? "")"
        let password = "Password: \(textFieldPassword.text ?? "")"
        
        print(name + "\n" + email + "\n" + phone + "\n" + password)
    }
}
