//
//  Constants.swift
//  mvc_to_mvvm_demo
//
//  Created by M78 on 8/27/18.
//  Copyright © 2018 Brian Voong. All rights reserved.
//

import Foundation
import UIKit


class CustomNavigationController: UINavigationController {
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .default
//        return .lightContent 
    }
}

extension UIColor {
    static let mainTextBlue = UIColor.rgb(red: 7, green: 71, blue: 89)
    static let highlightColor = UIColor.rgb(red: 50, green: 199, blue: 242)
    
    
    static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return UIColor(red: red / 255, green: green / 255, blue: blue / 255, alpha: 1.0)
    }
}
