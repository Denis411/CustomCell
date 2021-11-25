//
//  View.swift
//  CustomCell
//
//  Created by I am the owner on 11/25/21.
//

import UIKit

class RoundGradientView: UIView {

    private var gradient: CAGradientLayer = {
       let gradient = CAGradientLayer()
        gradient.colors = [UIColor.orange.cgColor, UIColor.red.cgColor]
        return gradient
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.clipsToBounds = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = self.bounds.width / 2
        setUpGradient()
    }
    
    private func setUpGradient() {
        gradient.frame = CGRect(x: self.frame.origin.x,
                                y: self.frame.origin.y,
                                width: self.frame.width,
                                height: self.frame.height )
        self.layer.addSublayer(gradient)
    }
    
}
