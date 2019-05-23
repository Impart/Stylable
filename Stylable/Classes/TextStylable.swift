//
//  TextStylable.swift
//  layoutTests
//
//  Created by Marcel Borsten on 22/05/2019.
//  Copyright © 2019 Impart. All rights reserved.
//

import UIKit

public struct TextStyle {
    
    let font: UIFont
    let color: UIColor?
    let backgroundColor: UIColor?
    let lineBreakMode: NSLineBreakMode?
    let lineSpacing: CGFloat?
    let kern: CGFloat?

    public init(font: UIFont,
         color: UIColor? = nil,
         backgroundColor: UIColor? = nil,
         lineBreakMode: NSLineBreakMode? = nil,
         lineSpacing: CGFloat? = nil,
         kern: CGFloat? = nil) {

        self.font = font
        self.color = color
        self.backgroundColor = backgroundColor
        self.lineBreakMode = lineBreakMode
        self.lineSpacing = lineSpacing
        self.kern = kern
        
    }
}

public protocol TextStylable: class {

    var text: String? { get set }
    var attributedText: NSAttributedString? { get set }

    func styleView(with viewStyle: ViewStyle)
    func styleBorder(with borderStyle: BorderStyle)
    func styleShadow(with shadowStyle: ShadowStyle)

}

public extension TextStylable {

    func styleText(with textStyle: TextStyle) {

        guard let text = (text ?? attributedText?.string) else { return }

        let attributes = attributesFromStyle(textStyle: textStyle)

        let stylableText = NSMutableAttributedString(string: text, attributes: attributes)

        self.attributedText = stylableText
    }

    /// Generates NSAttributedString attributes from a Style
    ///
    /// - Parameter textStyle: The style
    /// - Returns: Attributes
    func attributesFromStyle(textStyle: TextStyle) -> [NSAttributedString.Key : Any] {

        let font = textStyle.font

        var attributes = [
            NSAttributedString.Key.font: font as Any
        ]

        if let color = textStyle.color {
            attributes[NSAttributedString.Key.foregroundColor] = color
        }

        if let backgroundColor = textStyle.backgroundColor {
            attributes[NSAttributedString.Key.backgroundColor] = backgroundColor
        }

        if let kern = textStyle.kern {
            attributes[NSAttributedString.Key.kern] = kern
        }

        let paragraphStyle = NSMutableParagraphStyle()
        var paragraphIsStyled = false

        if let lineSpacing = textStyle.lineSpacing {
            paragraphStyle.lineSpacing = lineSpacing
            paragraphIsStyled = true
        }

        if let lineBreakMode = textStyle.lineBreakMode {
            paragraphStyle.lineBreakMode = lineBreakMode
            paragraphIsStyled = true
        }

        if paragraphIsStyled {
            attributes[NSAttributedString.Key.paragraphStyle] = paragraphStyle
        }

        return attributes
    }

}

extension UILabel: TextStylable { }

extension UIButton: TextStylable {

    public var text: String? {
        get {
            return title(for: .normal)
        }
        set {
            setTitle(newValue, for: .normal)
        }
    }

    public var attributedText: NSAttributedString? {
        get {
            return attributedTitle(for: .normal)
        }
        set {
            setAttributedTitle(newValue, for: .normal)
        }
    }

}
