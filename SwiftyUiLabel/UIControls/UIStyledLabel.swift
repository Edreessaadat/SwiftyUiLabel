//
//  SwiftyUiLabel.swift
//  SwiftyUiLabel
//
//  Created by Mohammad Edrees on 1/31/21.
//

import UIKit

public class UIStyledLabel: UILabel {
    private var fontStyle: UIScaledFontStyles = .body
    private var rangeFontAndSizeDictionary: [NSRange: CGFloat]?
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        registerForTextChangeEvent()
        labelResizeInit()
    }
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        registerForTextChangeEvent()
        labelResizeInit()
    }
    
    /// Desccribe the number of lines we need lable
    /// Default will be a multilinetext i.e. numberOfLines = 0
    public var linesRequired: Int = 0 {
        didSet {
            self.numberOfLines = linesRequired
        }
    }
    
    ///Permits disabling automatic adjustment of width
    ///Note: doing this may no longer support a11y
    public var adjustFontWithWidth: Bool = true {
        didSet {
            self.adjustsFontSizeToFitWidth = adjustFontWithWidth
        }
    }
    
    /// Set this Property to set Attributed String
    public var attributedString: NSAttributedString? {
        didSet {
            if let attributedString = attributedText {
                self.attributedText = attributedString
                rangeFontAndSizeDictionary = [NSRange: CGFloat]()
                attributedString.enumerateAttribute(.font, in: NSRange(0..<attributedString.length)) { (value, range, _) in
                    if let font = value as? UIFont {
                        rangeFontAndSizeDictionary?[range] = UIScaledFont.getActualFontSize(for: font.pointSize)
                    }
                }
            }
        }
    }
    
    /*
     Setting this property ensures use of the properly selected UIFont (Dynamically sized)
     Note: When setting style -- the default color is selected automatically
     Color should only be choosen from UIStyles
     */
    
    public var style: UIScaledFontStyles {
        get {
            return fontStyle
        }
        set {
            fontStyle = newValue
            self.font = UIScaledFont.fontFromStyle(style: fontStyle)
            self.textColor = UIStyles.defaultColorFor(styles: fontStyle)
        }
    }
    
    private func registerForTextChangeEvent() {
        NotificationCenter.default.addObserver(self, selector: #selector(userChangedTextSize), name: UIContentSizeCategory.didChangeNotification, object: nil)
    }
    
    @objc
    func userChangedTextSize(notification: Notification) {
        if let rangeAndFontSizeDict = rangeFontAndSizeDictionary, let attributedText = self.attributedText {
            let mutableAttributedString = NSMutableAttributedString(attributedString: attributedText)
            mutableAttributedString.enumerateAttribute(.font, in: NSRange(0..<mutableAttributedString.length)) { (value, range, _) in
                if let font = value as? UIFont, let originalFontSize = rangeAndFontSizeDict[range] {
                    let updatedFont = font.withSize(UIScaledFont.fontHelper(for: originalFontSize))
                    mutableAttributedString.addAttribute(.font, value: updatedFont, range: range)
                }
            }
            self.attributedText = mutableAttributedString
        } else {
            self.font = UIScaledFont.fontFromStyle(style: self.style)
        }
    }
    
    private func labelResizeInit() {
        self.adjustsFontSizeToFitWidth = adjustFontWithWidth
        self.numberOfLines = linesRequired
    }
}

