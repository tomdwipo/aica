//
//  MenuViewController.swift
//  PlaygroundApp
//
//  Created by Learning on 16/03/23.
//

import UIKit

class MenuViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var table: UITableView!
    
    struct Menu {
        let image: String
        let title: String
        let rating: String
        let price: String
    }
    
    let data: [Menu] = [
        Menu(image: "americano", title: "Americano", rating: "3", price: "Rp.18.0000"),
        Menu(image: "pancake-blueberry", title: "Pancake Blueberry", rating: "5", price: "Rp.38.000"),
        Menu(image: "caesar-salad", title: "Caesar Salad", rating: "4", price: "Rp.40.000"),
        Menu(image: "mango-juice", title: "Mango Juice", rating: "4", price: "Rp.36.000"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.dataSource = self
        table.register(UINib(nibName: "MenuViewCell", bundle: nil), forCellReuseIdentifier: "MenuCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let menu = data[indexPath.row]
        
        let cell = table.dequeueReusableCell(withIdentifier: "MenuCell", for: indexPath) as! MenuViewCell
        cell.imageMenu.image = UIImage(named: menu.image)
        cell.labelMenuTitle.text = menu.title
        cell.labelMenuRating.text = menu.rating
        cell.labelMenuPrice.text = menu.price
        
        return cell
    }
}
