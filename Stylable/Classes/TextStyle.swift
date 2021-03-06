//
//  TextStyle.swift
//  Pods
//
//  Created by Impart IT on 23/05/2019.
//

import UIKit

public struct TextStyle {

    var font: UIFont
    var color: UIColor?
    var backgroundColor: UIColor?
    var lineBreakMode: NSLineBreakMode?
    var underlineStyle: NSUnderlineStyle?
    var underlineColor: UIColor?
    var lineSpacing: CGFloat?
    var kern: CGFloat?
    var inset: CGFloat?
    var placeHolderFont: UIFont?
    var placeHolderColor: UIColor?
    var placeHolderKern: CGFloat?

    public init(font: UIFont) {
        self.font = font
    }

    public func color(_ color: UIColor) -> TextStyle {
        var style = self
        style.color = color
        return style
    }

    public func backgroundColor(_ color: UIColor) -> TextStyle {
        var style = self
        style.backgroundColor = color
        return style
    }

    public func lineBreakMode(_ lineBreakMode: NSLineBreakMode) -> TextStyle {
        var style = self
        style.lineBreakMode = lineBreakMode
        return style
    }

    public func lineSpacing(_ lineSpacing: CGFloat) -> TextStyle {
        var style = self
        style.lineSpacing = lineSpacing
        return style
    }

    public func kern(_ kern: CGFloat) -> TextStyle {
        var style = self
        style.kern = kern
        return style
    }

    public func inset(_ inset: CGFloat) -> TextStyle {
        var style = self
        style.inset = inset
        return style
    }

    public func placeHolderFont(_ font: UIFont) -> TextStyle {
        var style = self
        style.placeHolderFont = font
        return style
    }

    public func placeHolderColor(_ color: UIColor) -> TextStyle {
        var style = self
        style.placeHolderColor = color
        return style
    }

    public func placeHolderKern(_ kern: CGFloat) -> TextStyle {
        var style = self
        style.placeHolderKern = kern
        return style
    }

    public func underlineStyle(_ underlineStyle: NSUnderlineStyle) -> TextStyle {
        var style = self
        style.underlineStyle = underlineStyle
        return style
    }

    public func underlineColor(_ underlineColor: UIColor) -> TextStyle {
        var style = self
        style.underlineColor = underlineColor
        return style
    }
}
