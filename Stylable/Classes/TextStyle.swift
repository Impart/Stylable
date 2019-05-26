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
    var lineSpacing: CGFloat?
    var kern: CGFloat?
    var inset: CGFloat?
    var placeHolderFont: UIFont?
    var placeHolderColor: UIColor?
    var placeHolderKern: CGFloat?

    public init(font: UIFont,
                color: UIColor? = nil,
                backgroundColor: UIColor? = nil,
                lineBreakMode: NSLineBreakMode? = nil,
                lineSpacing: CGFloat? = nil,
                kern: CGFloat? = nil,
                inset: CGFloat? = nil,
                placeHolderFont: UIFont? = nil,
                placeHolderColor: UIColor? = nil,
                placeHolderKern: CGFloat? = nil) {

        self.font = font
        self.color = color
        self.backgroundColor = backgroundColor
        self.lineBreakMode = lineBreakMode
        self.lineSpacing = lineSpacing
        self.kern = kern
        self.inset = inset
        self.placeHolderFont = placeHolderFont
        self.placeHolderColor = placeHolderColor
        self.placeHolderKern = placeHolderKern

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
}
