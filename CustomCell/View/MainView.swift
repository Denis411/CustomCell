//
//  MainView.swift
//  CustomCell
//
//  Created by I am the owner on 11/25/21.
//

import UIKit

class MainView: UIView {
    private let multiplier: CGFloat = 1.2
    private var roundGradient: RoundGradientView!
    private let backgroundView = BackgroundView()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.clipsToBounds = true
        setUpBackgroundViwe()
        setUpRoundGradientFrame()
    }
    
//  MARK: -- Subviews
    func setUpRoundGradientConstraint() {
        roundGradient = RoundGradientView()
        self.addSubview(roundGradient)
        roundGradient.translatesAutoresizingMaskIntoConstraints = false
        roundGradient.topAnchor.constraint(equalTo: self.topAnchor, constant: 0).isActive = true
        roundGradient.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0).isActive = true
        roundGradient.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0).isActive = true
        roundGradient.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 100).isActive = true
        
    }
    
    func setUpRoundGradientFrame() {
        roundGradient = RoundGradientView()
        roundGradient.frame = CGRect(x: self.bounds.origin.x,
                                     y: self.bounds.origin.y + 50,
                                     width: self.bounds.width,
                                     height: self.bounds.height)
        self.addSubview(roundGradient)
    }
    
    func setUpBackgroundViwe() {
        backgroundView.frame = self.frame
        self.addSubview(backgroundView)
    }

}
