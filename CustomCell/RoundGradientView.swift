//
//  View.swift
//  CustomCell
//
//  Created by I am the owner on 11/25/21.
//

import UIKit

class RoundGradientView: UIView {
    let button = UIButton()
    let multiplier: CGFloat = 2

    private var gradient: CAGradientLayer = {
       let gradient = CAGradientLayer()
        gradient.colors = [topGradientColorDay.cgColor, bottomGradientColorDay.cgColor]
        return gradient
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.clipsToBounds = true
        backgroundColor = .red
    }
    
    override func layoutSubviews() {
        self.layer.cornerRadius = self.bounds.width / 2
        setUpGradient()
        setUpButton()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func setUpGradient() {
        gradient.frame = CGRect(x: self.frame.origin.x,
                                y: self.frame.origin.y,
                                width: self.frame.width * 2,
                                height: self.frame.height * 2 )
        self.layer.addSublayer(gradient)
    }
    
    func setUpButton() {
        self.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .blue
        button.topAnchor.constraint(equalTo: self.topAnchor, constant: 20).isActive = true
        button.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 20).isActive = true
        button.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20).isActive = true
        button.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 20).isActive = true
    }
    
}
