//
//  TextStylable.swift
//  layoutTests
//
//  Created by Marcel Borsten on 22/05/2019.
//  Copyright © 2019 Impart. All rights reserved.
//

import UIKit

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

        if let underlineStyle = textStyle.underlineStyle {
            attributes[NSAttributedString.Key.underlineStyle] = underlineStyle.rawValue
        }

        if let underlineColor = textStyle.underlineColor {
            attributes[NSAttributedString.Key.underlineColor] = underlineColor
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

    func placeHolderAttributesFormStyle(textStyle: TextStyle) -> [NSAttributedString.Key: Any]? {
        var attributes: [NSAttributedString.Key: Any] = [:]
        if let font = textStyle.placeHolderFont {
            attributes[NSAttributedString.Key.font] = font
        }

        if let color = textStyle.placeHolderColor {
            attributes[NSAttributedString.Key.foregroundColor] = color
        }

        if let kern = textStyle.placeHolderKern {
            attributes[NSAttributedString.Key.kern] = kern
        }

        if attributes.keys.count > 0 {
            return attributes
        } else {
            return nil
        }

    }

}

public class TextView: UITextView, TextStylable {

    override public var text: String? {
        get {
            return super.text
        }
        set {
            super.text = newValue
        }
    }

    override public var attributedText: NSAttributedString? {
        get {
            return super.attributedText
        }
        set {
            super.attributedText = newValue
        }
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
