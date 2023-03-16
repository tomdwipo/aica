//
//  MenuViewCell.swift
//  PlaygroundApp
//
//  Created by Learning on 16/03/23.
//

import UIKit

class MenuViewCell: UITableViewCell {
    
    
    @IBOutlet weak var imageMenu: UIImageView!
    @IBOutlet weak var labelMenuTitle: UILabel!
    @IBOutlet weak var labelMenuRating: UILabel!
    @IBOutlet weak var labelMenuPrice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
