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
    
    @IBOutlet weak var lblName: UITextField!
    @IBOutlet weak var lblEmail: UITextField!
    @IBOutlet weak var lblPhone: UITextField!
    @IBOutlet weak var lblPassword: UITextField!
    
    
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
        let name = "Nama: \(lblName.text ?? "")"
        let email = "Email: \(lblEmail.text ?? "")"
        let phone = "Phone: \(lblPhone.text ?? "")"
        let password = "Password: \(lblPassword.text ?? "")"
        print(name + "\n" + email + "\n" + phone + "\n" + password)
    }
}
