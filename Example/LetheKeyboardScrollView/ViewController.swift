//
//  ViewController.swift
//  LetheKeyboardScrollView
//
//  Created by Osman YILDIRIM on 5.06.2019.
//  Copyright © 2019 Osman YILDIRIM. All rights reserved.
//

import UIKit
import LetheKeyboardScrollView

final class ViewController: UIViewController {
    @IBOutlet private weak var scrollView: LetheKeyboardScrollView!
    @IBOutlet private weak var stackView: UIStackView!

    var keyboardToolbar: UIToolbar!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        for case let item as UITextField in stackView.subviews {
           item.addDoneButton()
        }
    }
}

