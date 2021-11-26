//
//  MainView.swift
//  CustomCell
//
//  Created by I am the owner on 11/25/21.
//

import UIKit

/// MainView consists of 2 subviews a  background gradient and a round gradient.
/// -Properties
/// 1) distance - distance bewteen the top of self and the round gradient,
/// 2) multiplier - visible "corner radius" of round gradient
@IBDesignable
class MainView: UIView {

    public var distance: CGFloat = 105.73
    public var multiplier: CGFloat = 1.2
    
    private var roundGradient = RoundGradientView()
    private let backgroundView = BackgroundView()
    
    override func layoutSubviews() {
        self.clipsToBounds = true
        setUpBackgroundView()
        setUpRoundGradientFrame()
    }
    
//  MARK: -- Subviews
    
    func setUpRoundGradientFrame() {
        roundGradient.frame = CGRect(x: 0,
                                     y: distance,
                                     width: self.frame.width * multiplier,
                                     height: self.frame.height )
        roundGradient.center.x = backgroundView.center.x
        self.addSubview(roundGradient)
    }
    
    func setUpBackgroundView() {
        backgroundView.frame = CGRect(x: 0,
                                      y: 0,
                                      width: self.bounds.width,
                                      height: self.bounds.height)
        self.addSubview(backgroundView)
    }
}
