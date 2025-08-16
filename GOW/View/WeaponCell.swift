//
//  WeaponCell.swift
//  GOW
//
//  Created by Rafael Gonzalez on 15/08/25.
//

import UIKit

class WeaponCell: UITableViewCell {

    @IBOutlet weak var weaponName: UILabel!
    
    @IBOutlet weak var weaponPoster: UIImageView!
    
    @IBOutlet weak var weaponDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
