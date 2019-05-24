//
//  ViewController.swift
//  Stylable
//
//  Created by Impart IT on 05/23/2019.
//  Copyright (c) 2019 Impart IT. All rights reserved.
//

import UIKit
import Stylable

class ViewController: UIViewController {

    @IBOutlet weak var header1: UILabel!
    @IBOutlet weak var header2: UILabel!
    @IBOutlet weak var header3: UILabel!
    @IBOutlet weak var textField1: TextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        let header1Style = TextStyle(font: UIFont.boldSystemFont(ofSize: 36))
        header1.styleText(with: header1Style)

        let header2Style = TextStyle(font: UIFont.systemFont(ofSize: 24), color: .black)
        header2.styleText(with: header2Style)


        textField1.placeholder = "This is a placeholder"
        let textField1Style = ViewStyle(backgroundColor: .lightGray,
                                        border: BorderStyle(cornerRadius: 15.0, width: 2, color: .black),
                                        shadow: ShadowStyle(radius: 10.0, color: .black, offset: nil, opacity: 0.5))

        textField1.styleView(with: textField1Style)

        let textField1TextStyle = TextStyle(font: UIFont.systemFont(ofSize: 14),
                                            color: .black,
                                            inset: 20,
                                            placeHolderFont: UIFont.systemFont(ofSize: 12),
                                            placeHolderColor: .darkGray)

        textField1.styleText(with: textField1TextStyle)
    }


}
