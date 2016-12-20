//
//  AppleMusicButton.swift
//  Mathieu Vandeginste
//
//  Created by Mathieu Vandeginste on 18/10/2016.
//  Copyright © 2016 Mathieu Vandeginste. All rights reserved.
//

import UIKit

@IBDesignable public class AppleMusicButton: UIButton {
    
    @IBInspectable var shadowColor: UIColor = UIColor.clear {
        didSet {
            setNeedsLayout()
        }
    }
    
    @IBInspectable var shadowX: CGFloat = 0 {
        didSet {
            setNeedsLayout()
        }
    }
    
    @IBInspectable var shadowY: CGFloat = 0 {
        didSet {
            setNeedsLayout()
        }
    }
    
    @IBInspectable var shadowBlur: CGFloat = 0 {
        didSet {
            setNeedsLayout()
        }
    }
    
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


    
    override public func layoutSubviews() {
        super.layoutSubviews()
        
        if self.appleMusicRadius {
            self.layer.cornerRadius = self.bounds.height / 2
        } else {
            layer.cornerRadius = cornerRadius
        }
        self.titleLabel?.adjustsFontSizeToFitWidth = true
        clipsToBounds = false
        
        layer.shadowColor = shadowColor.cgColor
        layer.shadowOffset = CGSize(width: shadowX, height: shadowY)
        layer.shadowRadius = shadowBlur
        layer.shadowOpacity = 1
    }
}
