//
//  TopStaticCell.swift
//  CustomCell
//
//  Created by I am the owner on 11/25/21.
//

import UIKit

class TopStaticCell: UITableViewCell {
    
    private let gradient = RoundGradientView()
    
    static let identifier = "TopStaticCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.clipsToBounds = true
       
    }
    
    override func layoutSubviews() {
        setupUI()
        backgroundColor = .yellow
    }
    
    func setupUI() {
        self.addSubview(gradient)
        gradient.translatesAutoresizingMaskIntoConstraints = false
        gradient.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        gradient.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        gradient.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        gradient.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        
        addSubview(<#T##view: UIView##UIView#>)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}




    var topGradientColorDay = UIColor(red: 90/255, green: 173/255, blue: 255/255, alpha: 1)
    var bottomGradientColorDay = UIColor(red: 68/255, green: 161/255, blue: 255/255, alpha: 1)

