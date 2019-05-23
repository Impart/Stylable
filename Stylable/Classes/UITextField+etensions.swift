//
//  UITextField+etensions.swift
//  Pods
//
//  Created by Impart IT on 23/05/2019.
//

import UIKit

extension UITextField: TextStylable {

    public func styleText(with textStyle: TextStyle) {

        defaultTextAttributes = attributesFromStyle(textStyle: textStyle)

        stylePlaceholder(with: textStyle)

        if let inset = textStyle.inset {
            if let self = self as? TextField {
                self.inset = inset
            } else {
                print("Stylable WARNING: setting inset on a UITextField is not supported, please use TextField. Inset is ignored!")
            }
        }
    }

    public func stylePlaceholder(with textStyle: TextStyle) {
        if let attributes = placeHolderAttributesFormStyle(textStyle: textStyle) {
            let text = (placeholder ?? attributedPlaceholder?.string) ?? ""
            let stylableText = NSAttributedString(string: text, attributes: attributes)
            self.attributedPlaceholder = stylableText
        }
    }

}
