//
//  StaticTVCell.swift
//  CustomCell
//
//  Created by I am the owner on 11/26/21.
//

import UIKit

class StaticTVCell: UITableViewCell {

    static let identifier = "StaticTVCell"
    
    
    @IBOutlet weak var background: MainView!
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var weatherImage: UIImageView!
    @IBOutlet weak var temperature: UILabel!
    @IBOutlet weak var feelsLike: UILabel!
    
    override func awakeFromNib() {
        
        super.awakeFromNib()
    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
