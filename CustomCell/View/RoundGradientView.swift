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
    
    override func layoutSubviews() {
        self.clipsToBounds = true
        setUpGradient()
        setUpCornderRadius()
    }
    
    private func setUpGradient() {
        gradient.frame = CGRect(x: 0,
                                y: 0,
                                width: self.frame.width * 1.5,
                                height: self.frame.height * 1.5)
        self.layer.addSublayer(gradient)
    }
    
    private func setUpCornderRadius() {
        if self.frame.width < self.frame.height {
            self.layer.cornerRadius = self.bounds.width / 2
        }else {
            self.layer.cornerRadius = self.bounds.height / 2
        }
    }
}
