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
    }

}
