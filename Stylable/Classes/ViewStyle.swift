//
//  ViewStyle.swift
//  Pods
//
//  Created by Marcel Borsten on 23/05/2019.
//

import Foundation

public struct BorderStyle {

    var cornerRadius: CGFloat?
    var width: CGFloat?
    var color: UIColor?

    public init() { }

    public func cornerRadius(_ radius: CGFloat) -> BorderStyle {
        var style = self
        style.cornerRadius = radius
        return style
    }

    public func width(_ width: CGFloat) -> BorderStyle {
        var style = self
        style.width = width
        return style
    }

    public func color(_ color: UIColor) -> BorderStyle {
        var style = self
        style.color = color
        return style
    }
}

public struct ShadowStyle {

    var radius: CGFloat?
    var color: UIColor?
    var offset: CGSize?
    var opacity: CGFloat?

    public init() {}

    public func radius(_ radius: CGFloat) -> ShadowStyle {
        var style = self
        style.radius = radius
        return style
    }

    public func color(_ color: UIColor) -> ShadowStyle {
        var style = self
        style.color = color
        return style
    }

    public func offset(_ offset: CGSize) -> ShadowStyle {
        var style = self
        style.offset = offset
        return style
    }

    public func opacity(_ opacity: CGFloat) -> ShadowStyle {
        var style = self
        style.opacity = opacity
        return style
    }
}

public struct ViewStyle {

    var backgroundColor: UIColor?
    var border: BorderStyle?
    var shadow: ShadowStyle?

    public init() {}

    public func backgroundColor(_ color: UIColor) -> ViewStyle {
        var style = self
        style.backgroundColor = color
        return style
    }

    public func border(_ border: BorderStyle) -> ViewStyle {
        var style = self
        style.border = border
        return style
    }

    public func shadow(_ shadow: ShadowStyle) -> ViewStyle {
        var style = self
        style.shadow = shadow
        return style
    }


}
