//
//  Extension.swift
//  LetheKeyboardScrollView_Example
//
//  Created by osmanyildirim on 02/27/2021.
//  Copyright (c) 2021 osmanyildirim. All rights reserved.
//

import UIKit

extension UITextField {
    func addDoneButton() {
        let keyboardToolbar = UIToolbar(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 50))
        keyboardToolbar.barStyle = .default
        keyboardToolbar.tintColor = .black
        keyboardToolbar.backgroundColor = UIColor.gray

        keyboardToolbar.items = [
            UIBarButtonItem.init(title: "OK", style: .done, target: self, action: #selector(self.resign))]
        keyboardToolbar.sizeToFit()
        self.inputAccessoryView = keyboardToolbar
    }

    @objc private func resign() {
        self.superview!.endEditing(true)
    }
}
