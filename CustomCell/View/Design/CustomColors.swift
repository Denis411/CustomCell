//
//  GradientColors.swift
//  CustomCell
//
//  Created by I am the owner on 11/25/21.
//

import UIKit
// Colors daytime
let topBackgroundGradient = UIColor(red: 90/255, green: 173/255, blue: 1, alpha: 1)
let bottomBackgroundGradient = UIColor(red: 68/255, green: 161/255, blue: 1, alpha: 1)
let topRoundGradient = UIColor(red: 64/255, green: 155/255, blue: 246/255, alpha: 1)
let bottomRoundGradient = UIColor(red: 64/255, green: 155/255, blue: 246/255, alpha: 0)

// Colors night
let topBackgroundGradientNight = UIColor(red: 48/255, green: 56/255, blue: 67/255, alpha: 1)
let bottomBackgroundGradientNight = UIColor(red: 41/255, green: 49/255, blue: 57/255, alpha: 1)
let topRoundGradientNight = UIColor(red: 33/255, green: 40/255, blue: 48/255, alpha: 1)
let bottomRoundGradientNight = UIColor(red: 36/255, green: 43/255, blue: 52/255, alpha: 0)

// Colors sunrise
let topBackgroundGradientSunrise = UIColor(red: 93/255, green: 89/255, blue: 255/255, alpha: 1)
let bottomBackgroundGradientSunrise = UIColor(red: 255/255, green: 166/255, blue: 62/255, alpha: 1)
let topRoundGradientSunrise = UIColor(red: 96/255, green: 74/255, blue: 232/255, alpha: 1)
let bottomRoundGradientSunrise = UIColor(red: 55/255, green: 42/255, blue: 134/255, alpha: 0)

/// Stratagy amied at customizing MainView
protocol ColorStratagy {
//  Color for background gradient
    var topColorBackground   : CGColor { get }
    var bottomColorBackground: CGColor { get }
//  Colors for round gradient
    var topColorRoundView    : CGColor { get }
    var bottomColorRoundView : CGColor { get }
}

struct DayStratagy: ColorStratagy {
    var topColorBackground: CGColor = topBackgroundGradient.cgColor
    var bottomColorBackground: CGColor = bottomBackgroundGradient.cgColor
    var topColorRoundView: CGColor = topRoundGradient.cgColor
    var bottomColorRoundView: CGColor = bottomRoundGradient.cgColor
}

struct NightStratagy: ColorStratagy {
    var topColorBackground: CGColor = topBackgroundGradientNight.cgColor
    var bottomColorBackground: CGColor = bottomBackgroundGradientNight.cgColor
    var topColorRoundView: CGColor = topRoundGradientNight.cgColor
    var bottomColorRoundView: CGColor = bottomRoundGradientNight.cgColor
}

struct SunriseStratagy: ColorStratagy {
    var topColorBackground: CGColor = topBackgroundGradientSunrise.cgColor
    var bottomColorBackground: CGColor = bottomBackgroundGradientSunrise.cgColor
    var topColorRoundView: CGColor = topRoundGradientSunrise.cgColor
    var bottomColorRoundView: CGColor = bottomRoundGradientSunrise.cgColor
}
