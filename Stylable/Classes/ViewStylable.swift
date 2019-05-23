//
//  ViewStylable.swift
//  layoutTests
//
//  Created by Marcel Borsten on 22/05/2019.
//  Copyright © 2019 Impart. All rights reserved.
//

import UIKit

public struct BorderStyle {
    let cornerRadius: CGFloat?
    let width: CGFloat?
    let color: UIColor?
}

public struct ShadowStyle {
    let radius: CGFloat?
    let color: UIColor?
    let offset: CGSize?
    let opacity: CGFloat?
}

public struct ViewStyle {
    let backgroundColor: UIColor?
    let border: BorderStyle?
    let shadow: ShadowStyle?
}

public protocol ViewStylable: class {

    var backgroundColor: UIColor? { get set }
    var layer: CALayer { get }
    var clipsToBounds: Bool { get set }

    func styleView(with viewStyle: ViewStyle)
    func styleBorder(with borderStyle: BorderStyle)
    func styleShadow(with shadowStyle: ShadowStyle)
}

extension ViewStylable {

    public func styleView(with viewStyle: ViewStyle) {

        if let backgroundColor = viewStyle.backgroundColor {
            self.backgroundColor = backgroundColor
        }

        if let border = viewStyle.border {
            styleBorder(with: border)
        }

        if let shadow = viewStyle.shadow {
            styleShadow(with: shadow)
        }

    }

    public func styleBorder(with borderStyle: BorderStyle) {
        if let cornerRadius = borderStyle.cornerRadius {
            self.layer.cornerRadius = cornerRadius
        }
        if let width = borderStyle.width {
            self.layer.borderWidth = width
        }
        if let color = borderStyle.color {
            self.layer.borderColor = color.cgColor
        }
    }

    public func styleShadow(with shadowStyle: ShadowStyle) {
        if let radius = shadowStyle.radius {
            layer.shadowRadius = radius
        }

        if let color = shadowStyle.color {
            layer.shadowColor = color.cgColor
        }

        if let offset = shadowStyle.offset {
            layer.shadowOffset = offset
        }

        if let opacity = shadowStyle.opacity {
            layer.shadowOpacity = Float(opacity)
        }
    }

}

extension UIView: ViewStylable { }