//
//  ViewStyle.swift
//  Pods
//
//  Created by Marcel Borsten on 23/05/2019.
//

import Foundation

public struct BorderStyle {

    let cornerRadius: CGFloat?
    let width: CGFloat?
    let color: UIColor?

    public init(cornerRadius: CGFloat? = nil,
                width: CGFloat? = nil,
                color: UIColor? = nil) {

        self.cornerRadius = cornerRadius
        self.width = width
        self.color = color

    }
}

public struct ShadowStyle {

    let radius: CGFloat?
    let color: UIColor?
    let offset: CGSize?
    let opacity: CGFloat?

    public init(radius: CGFloat? = nil,
                color: UIColor? = nil,
                offset: CGSize? = nil,
                opacity: CGFloat? = nil) {

        self.radius = radius
        self.color = color
        self.offset = offset
        self.opacity = opacity

    }
}

public struct ViewStyle {

    let backgroundColor: UIColor?
    let border: BorderStyle?
    let shadow: ShadowStyle?

    public init(backgroundColor: UIColor? = nil,
                border: BorderStyle? = nil,
                shadow: ShadowStyle? = nil) {

        self.backgroundColor = backgroundColor
        self.border = border
        self.shadow = shadow

    }
}
