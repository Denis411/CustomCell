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
        backgroundColor = .red
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        self.layer.cornerRadius = self.bounds.width / 2
        setUpGradient()
    }
    
    private func setUpGradient() {
        gradient.frame = CGRect(x: self.bounds.origin.x,
                                y: self.bounds.origin.y,
                                width: self.bounds.width,
                                height: self.bounds.height )
        self.layer.addSublayer(gradient)
    }
    
}
