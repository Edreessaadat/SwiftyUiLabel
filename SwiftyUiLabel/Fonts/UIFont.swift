//
//  UIFont.swift
//  SwiftyUiLabel
//
//  Created by Mohammad Edrees on 1/31/21.
//

import UIKit

public enum FontType {
    case Bold
    case Light
    case Regular
    case Medium
    
    static let allValues: [FontType] = [.Bold, .Light, .Medium, .Regular]
}

public struct Font {
    @available(*, deprecated, message: "Please use the ScaledFont.fontFromStyle(styles:) as a replacement.")
    public static func fontKind(_ type: FontType, size: CGFloat) -> UIFont {
        return _fontKind(type, size: size)
    }
    
    static func _fontKind(_ type: FontType, size: CGFloat) -> UIFont {
        var tryFont: UIFont?
        switch type {
        case .Regular:
            tryFont = UIFont(name: "HelveticaNueue", size: size)
        default:
            tryFont = UIFont(name: "HelveticaNueue-\(type)", size: size)
        }
        
        guard let font = tryFont else { return UIFont.systemFont(ofSize: size) }
        return font
    }
}
