//
//  ViewController.swift
//  OYKeyboardScrollView
//
//  Created by osmanyildirim on 02/27/2021.
//  Copyright (c) 2021 osmanyildirim. All rights reserved.
//

import UIKit
import OYKeyboardScrollView

final class ViewController: UIViewController {
    
    @IBOutlet private weak var scrollView: OYKeyboardScrollView!
    @IBOutlet private weak var stackView: UIStackView!
    

    var keyboardToolbar: UIToolbar!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        for case let item as UITextField in stackView.subviews {
           item.addDoneButton()
        }
    }
}

