//
//  weaponCell.swift
//  GOW
//
//  Created by Rafael González on 05/08/23.
//

import UIKit

class weaponCell: UITableViewCell {
    
    @IBOutlet var wName: UILabel!
    
    @IBOutlet var wImage: UIImageView!
    
    @IBOutlet var wDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
