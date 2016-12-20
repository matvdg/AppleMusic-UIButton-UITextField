//
//  AppleMusicTextField.swift
//  Mathieu Vandeginste
//
//  Created by Mathieu Vandeginste on 20/12/2016.
//  Copyright © 2016 Mathieu Vandeginste. All rights reserved.
//

import UIKit

@IBDesignable class AppleMusicTextField: UITextField {
    
    @IBInspectable var cornerRadius: CGFloat = 2.0 {
        didSet {
            setNeedsLayout()
        }
    }
    
    @IBInspectable var appleMusicRadius: Bool = true {
        didSet {
            setNeedsLayout()
        }
    }


    
    @IBInspectable var borderColor: UIColor = UIColor.white {
        didSet {
            layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 2.0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var leftPadding: CGFloat = 0 {
        didSet {
            setNeedsLayout()
        }
    }
    
    @IBInspectable var rightPadding: CGFloat = 0 {
        didSet {
            setNeedsLayout()
        }
    }
    
    @IBInspectable var topPadding: CGFloat = 0 {
        didSet {
            setNeedsLayout()
        }
    }
    
    @IBInspectable var bottomPadding: CGFloat = 0 {
        didSet {
            setNeedsLayout()
        }
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, getPadding())
    }
    
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, getPadding())
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, getPadding())
    }
    
    private func getPadding() -> UIEdgeInsets {
        return UIEdgeInsets(top: topPadding, left: leftPadding, bottom: bottomPadding, right: rightPadding)
    }
    
    
    override public func layoutSubviews() {
        super.layoutSubviews()
        if self.appleMusicRadius {
            self.layer.cornerRadius = self.bounds.height / 2
        } else {
            layer.cornerRadius = cornerRadius
        }
    }
}
