//
//  UIScaledFonts.swift
//  SwiftyUiLabel
//
//  Created by Mohammad Edrees on 1/31/21.
//

import UIKit

public enum UIScaledFontStyles {
    case numbers
    case headline
    case body
    case smallBody
}

public final class UIScaledFont {
    
    @available(iOS 9.0, *)
    public static func fontScaledSize(for fontSize: CGFloat) -> CGFloat {
        switch UIApplication.shared.preferredContentSizeCategory {
        case UIContentSizeCategory.accessibilityExtraExtraExtraLarge:
            return (fontSize + 8) / fontSize
        case UIContentSizeCategory.accessibilityExtraExtraLarge:
            return (fontSize + 7) / fontSize
        case UIContentSizeCategory.accessibilityExtraLarge:
            return (fontSize + 6) / fontSize
        case UIContentSizeCategory.accessibilityLarge:
            return (fontSize + 5) / fontSize
        case UIContentSizeCategory.accessibilityMedium:
            return (fontSize + 4) / fontSize
        case UIContentSizeCategory.extraExtraExtraLarge:
            return (fontSize + 3) / fontSize
        case UIContentSizeCategory.extraExtraLarge:
            return (fontSize + 2) / fontSize
        case UIContentSizeCategory.extraLarge:
            return (fontSize + 1) / fontSize
        case UIContentSizeCategory.large:
            return 1.0
        case UIContentSizeCategory.medium:
            return (fontSize - 1) / fontSize
        case UIContentSizeCategory.small:
            return (fontSize - 2) / fontSize
        case UIContentSizeCategory.extraSmall:
            return (fontSize - 3) / fontSize
        default:
            return 1.0
        }
    }
    
    
    @available(iOS 9.0, *)
    public static func getActualFontSize(for scaledFontSize: CGFloat) -> CGFloat {
        switch UIApplication.shared.preferredContentSizeCategory {
        case UIContentSizeCategory.accessibilityExtraExtraExtraLarge:
            return (scaledFontSize - 8)
        case UIContentSizeCategory.accessibilityExtraExtraLarge:
            return (scaledFontSize - 7)
        case UIContentSizeCategory.accessibilityExtraLarge:
            return (scaledFontSize - 6)
        case UIContentSizeCategory.accessibilityLarge:
            return (scaledFontSize - 5)
        case UIContentSizeCategory.accessibilityMedium:
            return (scaledFontSize - 4)
        case UIContentSizeCategory.extraExtraExtraLarge:
            return (scaledFontSize - 3)
        case UIContentSizeCategory.extraExtraLarge:
            return (scaledFontSize - 2)
        case UIContentSizeCategory.extraLarge:
            return (scaledFontSize - 1)
        case UIContentSizeCategory.large:
            return scaledFontSize
        case UIContentSizeCategory.medium:
            return (scaledFontSize + 1)
        case UIContentSizeCategory.small:
            return (scaledFontSize + 2)
        case UIContentSizeCategory.extraSmall:
            return (scaledFontSize + 3)
        default:
            return scaledFontSize
        }
    }
    
    public static func fontHelper(for fontSize: CGFloat) -> CGFloat {
        let scaledSize = fontScaledSize(for: fontSize)
        let calcFontSize = fontSize * scaledSize
        return calcFontSize
    }
    
    public static func fontFromStyle(style: UIScaledFontStyles) -> UIFont {
        var font: UIFont
        switch style {
        case .numbers:
            font = Font._fontKind(.Bold, size: 44)
        case .body:
            font = Font._fontKind(.Medium, size: 33)
        case .headline:
            font = Font._fontKind(.Bold, size: 55)
        case .smallBody:
            font = Font._fontKind(.Light, size: 22)
        }
        return font
    }
}

