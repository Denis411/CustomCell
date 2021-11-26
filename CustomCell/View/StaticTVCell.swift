//
//  StaticTVCell.swift
//  CustomCell
//
//  Created by I am the owner on 11/26/21.
//

import UIKit

class StaticTVCell: UITableViewCell {

    @IBOutlet weak var label: UILabel!
    static let identifier = "StaticTVCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
