//
//  BackgroundView.swift
//  CustomCell
//
//  Created by I am the owner on 11/25/21.
//

import UIKit

/// A UIView  with a top-to-bottom gradient
class BackgroundView: UIView {

    private let backgroundGradient = CAGradientLayer()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        backgroundGradient.colors = [ topBackgroundGradient.cgColor, bottomBackgroundGradient.cgColor]
        backgroundGradient.startPoint = CGPoint(x: 0.5, y: 0.0)
        backgroundGradient.endPoint = CGPoint(x: 0.5, y: 1.0)
        backgroundGradient.frame = CGRect(x: self.frame.origin.x,
                                          y: self.frame.origin.y,
                                          width: self.frame.width,
                                          height: self.frame.height)
        self.layer.addSublayer(backgroundGradient)
        backgroundGradient.layoutSublayers()
    }
    
}
