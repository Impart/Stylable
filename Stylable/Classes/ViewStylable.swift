//
//  ViewStylable.swift
//  layoutTests
//
//  Created by Impart IT on 22/05/2019.
//  Copyright © 2019 Impart. All rights reserved.
//

import UIKit

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

        self.backgroundColor = .clear

        if let backgroundColor = viewStyle.backgroundColor {
            self.layer.backgroundColor = backgroundColor.cgColor
        }
        
        if let border = viewStyle.border {
            styleBorder(with: border)
        } else {
            clearBorder()
        }

        if let shadow = viewStyle.shadow {
            styleShadow(with: shadow)
        } else {
            clearShadow()
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

    private func clearBorder() {
        self.layer.cornerRadius = 0.0
        self.layer.borderWidth = 0.0
        self.layer.borderColor = nil
    }

    private func clearShadow() {
        self.layer.shadowRadius = 0.0
        self.layer.shadowColor = nil
        self.layer.shadowOffset = CGSize.zero
        self.layer.shadowOpacity = 0.0
    }

}

extension UIView: ViewStylable { }
