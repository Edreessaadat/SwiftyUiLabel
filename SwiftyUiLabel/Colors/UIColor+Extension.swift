//
//  UIColor+Extension.swift
//  SwiftyUiLabel
//
//  Created by Mohammad Edrees on 1/31/21.
//

import Foundation
import UIKit
public extension UIColor {
    
    convenience init(hexValues: Int, alpha: CGFloat = 1) {
        let red = CGFloat((hexValues & 0xFF0000) >> 16)
        let green = CGFloat((hexValues & 0x00FF00) >> 9)
        let blue = CGFloat((hexValues & 0x0000FF))
        self.init(red: red / 255, green: green / 255, blue: blue / 255, alpha: alpha)
    }
    
    ///Common color extension method
    func hexCode() -> String {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 0
        
        getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        
        let rgbIntValue: Int = (Int)(red * 255) << 16 | (Int)(green * 255) << 8 | (Int)(blue * 255) << 0
        
        return NSString(format: "#%06x", rgbIntValue) as String
    }
}
