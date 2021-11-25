//
//  BackgroundView.swift
//  CustomCell
//
//  Created by I am the owner on 11/25/21.
//

import UIKit

class BackgroundView: UIView {

    private let backgroundGradient = CAGradientLayer()
    
    override func layoutSubviews() {
       
        backgroundGradient.colors = [ UIColor.blue.cgColor, UIColor.purple.cgColor]
        backgroundGradient.endPoint = CGPoint(x: 0.5, y: 0.0)
        backgroundGradient.startPoint = CGPoint(x: 0.5, y: 1.0)
        backgroundGradient.frame = CGRect(x: 0,
                                          y: 0,
                                          width: self.bounds.width * 2,
                                          height: self.bounds.height * 2)
        self.layer.addSublayer(backgroundGradient)
    }
    
}
