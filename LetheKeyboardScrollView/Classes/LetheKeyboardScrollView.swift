//
//  LetheKeyboardScrollView.swift
//  LetheKeyboardScrollView
//
//  Created by Osman YILDIRIM on 5.06.2019.
//  Copyright © 2019 Osman YILDIRIM. All rights reserved.
//

import UIKit

public let KEYBOARD_HIDE_NOTIFICATION_KEY: String = "KEYBOARD_HIDE_NOTIFICATION_KEY"

@IBDesignable public class LetheKeyboardScrollView: UIScrollView, UIScrollViewDelegate, UITextFieldDelegate, UITextViewDelegate {
    @IBInspectable var spaceValue: CGFloat = 0
    @IBInspectable var touchEndEditing: Bool = true
    @IBInspectable var onlyDirectionToUp: Bool = true
    
    public override func awakeFromNib() {
        NotificationCenter.default.addObserver(self, selector: #selector(self.editingEnd), name: NSNotification.Name.init(KEYBOARD_HIDE_NOTIFICATION_KEY), object: nil)
    }
    
    open override func touchesShouldBegin(_ touches: Set<UITouch>, with event: UIEvent?, in view: UIView) -> Bool {
        if view is UITextField || view is UITextView {
            if view is UITextField {
                (view as! UITextField).delegate = self
            } else if view is UITextView {
                (view as! UITextView).delegate = self
            }
            
            self.isScrollEnabled = true
            var viewFrame = view.bounds
            viewFrame = view.convert(viewFrame, to: self)
            var points: CGPoint = viewFrame.origin
            points.x = 0
            points.y -= self.frame.size.height / 2 - spaceValue
            if points.y > 0 || !onlyDirectionToUp {
                self.setContentOffset(points, animated: true)
            }
            
        }
        return true
    }
    
    override public func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if touchEndEditing {
            editingEnd()
        }
    }
    
    @objc func editingEnd() {
        if !onlyDirectionToUp {
            self.setContentOffset(CGPoint.zero, animated: true)
        }
        self.endEditing(true)
    }
    
    public func textFieldDidEndEditing(_ textField: UITextField) {
        editingEnd()
    }
    
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        editingEnd()
        return true
    }
    
    public func textViewDidEndEditing(_ textView: UITextView) {
        editingEnd()
    }
}
