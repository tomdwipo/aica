//
//  ViewController.swift
//  PlaygroundApp
//
//  Created by Learning on 06/03/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
//        let vc = WalkthroughViewController(nibName: String(describing: WalkthroughViewController.self), bundle: Bundle(for: type(of: self)))
//        modalPresentationStyle = .fullScreen
//        present(vc, animated: true)
        
        let vc = MenuViewController(nibName: "MenuView", bundle: nil)
        self.navigationController?.pushViewController(vc, animated: true)
    }

}

