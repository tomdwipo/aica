//
//  WalkthroughViewController.swift
//  PlaygroundApp
//
//  Created by Learning on 10/03/23.
//

import Foundation
import UIKit

class WalkthroughViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.setHidesBackButton(true, animated: true)
    }
    
    @IBAction func btnLogin(_ sender: Any) {
        let vc = LoginViewController(nibName: "LoginView", bundle: nil)
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
