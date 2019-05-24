//
//  TextField.swift
//  Pods
//
//  Created by Impart IT on 23/05/2019.
//

import UIKit

public class TextField: UITextField {

    var inset: CGFloat = 8

    override public func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: inset, dy: 0)
    }

    override public func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: inset, dy: 0)
    }

    override public func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: inset, dy: 0)
    }

}
