//
//  MainView.swift
//  CustomCell
//
//  Created by I am the owner on 11/25/21.
//

import UIKit

class MainView: UIView {
    private let multiplier: CGFloat = 1.2
    
    private let roundGradient = RoundGradientView()
    private let backgroundView = BackgroundView()
    
    override func layoutSubviews() {
        setUpBackgroundViwe()
        setUpRoundGradient()
    }
    
//  MARK: -- Subviews
    func setUpRoundGradient() {
        roundGradient.frame = CGRect(x: 0,
                                     y: 105,
                                     width: self.frame.width * multiplier,
                                     height: self.frame.height * multiplier)
        roundGradient.center.x = self.center.x
        self.addSubview(roundGradient)
    }
    
    func setUpBackgroundViwe() {
        backgroundView.frame = self.frame
        self.addSubview(backgroundView)
        
    }

}
