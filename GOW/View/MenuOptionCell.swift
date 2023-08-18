//
//  MenuOptionCell.swift
//  GOW
//
//  Created by Rafael González on 05/08/23.
//

import UIKit

class MenuOptionCell: UITableViewCell {
    
    @IBOutlet var menuLabel: UILabel!

    @IBOutlet var menuImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        let myFont = UIFont(name: "CGF Locust Resistance", size: 17)
        let bodyMetrics = UIFontMetrics(forTextStyle: .title1 )
        menuLabel.font = bodyMetrics.scaledFont(for: myFont!)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
