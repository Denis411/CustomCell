//
//  MainView.swift
//  CustomCell
//
//  Created by I am the owner on 11/25/21.
//

import UIKit

class MainView: UIView {
    
    public var distance: CGFloat = 50
    private var roundGradient = RoundGradientView()
    private let backgroundView = BackgroundView()
    
    override func layoutSubviews() {
        self.clipsToBounds = true
        setUpBackgroundViwe()
        setUpRoundGradientFrame()
    }
    
//  MARK: -- Subviews
    
    func setUpRoundGradientFrame() {
        roundGradient.frame = CGRect(x: 0,
                                     y: distance,
                                     width: self.frame.width,
                                     height: self.frame.height * 2)
        roundGradient.center.x = backgroundView.center.x
        self.addSubview(roundGradient)
    }
    
    func setUpBackgroundViwe() {
        backgroundView.frame = CGRect(x: 0,
                                      y: 0,
                                      width: self.bounds.width,
                                      height: self.bounds.height)
        self.addSubview(backgroundView)
    }
}
