//
//  View.swift
//  CustomCell
//
//  Created by I am the owner on 11/25/21.
//

import UIKit

/// A UIView with a round gradient
class RoundGradientView: UIView {

    private var gradient: CAGradientLayer = {
       let gradient = CAGradientLayer()
        gradient.colors = [topRoundGradient.cgColor, bottomRoundGradient.cgColor]
        return gradient
    }()
    
    override func layoutSubviews() {
        self.clipsToBounds = true
        setUpGradient()
        self.layer.cornerRadius = self.bounds.width / 2
    }
    
    private func setUpGradient() {
        let height: CGFloat
        let widht : CGFloat
        if self.frame.width > self.frame.height {
            height = self.frame.width
            widht  = self.frame.width
        } else {
            height = self.frame.height
            widht  = self.frame.width
        }
        gradient.frame = CGRect(x: 0,
                                y: 0,
                                width: widht,
                                height: height)
        self.layer.addSublayer(gradient)
    }
}
