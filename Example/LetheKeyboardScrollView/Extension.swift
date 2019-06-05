//
//  Extension.swift
//  LetheKeyboardScrollView_Example
//
//  Created by Vizyoneks on 5.06.2019.
//  Copyright © 2019 CocoaPods. All rights reserved.
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
