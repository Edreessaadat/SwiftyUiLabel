//
//  UIColors.swift
//  SwiftyUiLabel
//
//  Created by Mohammad Edrees on 1/31/21.
//

import Foundation
import UIKit

private struct ColorKeys {

    static let greyColor = "greyColor"
    static let redColor = "redColor"
    static let blueColor = "blueColor"
    
}

public struct AllColors {
    
    public struct Foundation {
        
        public static var blueColor: UIColor {
            if #available(iOS 11.0, *) {
                guard let color = UIColor(named: ColorKeys.blueColor) else {
                    return UIColor(red: 0.047, green: 0.125, blue: 0.455, alpha: 1.0)
                }
                return color
            } else {
                return UIColor(red: 0.047, green: 0.125, blue: 0.455, alpha: 1.0)
            }
        }
        
        public static var redColor: UIColor {
            if #available(iOS 11.0, *) {
                guard let color = UIColor(named: ColorKeys.redColor) else {
                    return UIColor(red: 0.902, green: 0.090, blue: 0.173, alpha: 1.0)
                }
                return color
            } else {
                return UIColor(red: 0.902, green: 0.090, blue: 0.173, alpha: 1.0)
            }
        }
        
        public static var greyColor: UIColor {
            if #available(iOS 11.0, *) {
                guard let color = UIColor(named: ColorKeys.greyColor) else {
                    return UIColor(red: 0.388, green: 0.392, blue: 0.400, alpha: 1.0)
                }
                return color
            } else {
                return UIColor(red: 0.388, green: 0.392, blue: 0.400, alpha: 1.0)
            }
        }
    }
}
