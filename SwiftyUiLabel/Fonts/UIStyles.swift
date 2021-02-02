//
//  UIStyles.swift
//  SwiftyUiLabel
//
//  Created by Mohammad Edrees on 1/31/21.
//

import Foundation
import UIKit

public struct UIStyles {
    
    /// Resubale styles
    public struct Numbers {
        private init() {}
        public static let blueColor: UIColor = AllColors.Foundation.blueColor
        public static let redColor: UIColor = AllColors.Foundation.redColor
        public static let greyColor: UIColor = AllColors.Foundation.greyColor
    }
    
    public struct Headline {
        private init() {}
        public static let blueColor: UIColor = AllColors.Foundation.blueColor
        public static let redColor: UIColor = AllColors.Foundation.redColor
        public static let greyColor: UIColor = AllColors.Foundation.greyColor
    }
    
    public struct body {
        private init() {}
        public static let blueColor: UIColor = AllColors.Foundation.blueColor
        public static let redColor: UIColor = AllColors.Foundation.redColor
        public static let greyColor: UIColor = AllColors.Foundation.greyColor
    }
    
    public struct smallyBody {
        private init() {}
        public static let blueColor: UIColor = AllColors.Foundation.blueColor
        public static let redColor: UIColor = AllColors.Foundation.redColor
        public static let greyColor: UIColor = AllColors.Foundation.greyColor
    }
    
    public static func defaultColorFor(styles: UIScaledFontStyles) -> UIColor {
        var defaultColor: UIColor
        switch styles {
        case .headline:
            defaultColor = UIStyles.Headline.blueColor
        case .body:
            defaultColor = UIStyles.body.greyColor
        case .numbers:
            defaultColor = UIStyles.body.redColor
        case .smallBody:
            defaultColor = UIStyles.smallyBody.greyColor
        }
        return defaultColor
    }
}

