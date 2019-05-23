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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let header1Style = TextStyle(font: UIFont.boldSystemFont(ofSize: 36), color: .black)
        header1.styleText(with: header1Style)

        let header2Style = TextStyle(font: UIFont.systemFont(ofSize: 24), color: .black)
        header2.styleText(with: header2Style)

        
    }


}
