//
//  ColorStratagy.swift
//  CustomCell
//
//  Created by I am the owner on 11/26/21.
//

import UIKit

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
