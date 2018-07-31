//
//  GradientView.swift
//  TeamChat
//
//  Created by Nghia Nguyen on 4/11/18.
//  Copyright © 2018 Nghia Nguyen. All rights reserved.
//

//Nghia: 11/04/2018: When u set color, setNeedslayout will be call -> automatically, layoutSubViews will be call

import UIKit

@IBDesignable
class GradientView: UIView {
    
    @IBInspectable
    var startColor: UIColor = UIColor.red {
        didSet {
            self.setNeedsLayout()
        }
    }
    
    @IBInspectable
    var endColor: UIColor = UIColor.green {
        didSet {
            self.setNeedsLayout()
        }
    }
    
    @IBInspectable
    var startPoint: CGPoint = CGPoint(x: 0, y: 0) {
        didSet {
            self.setNeedsLayout()
        }
    }
    
    @IBInspectable
    var endPoint: CGPoint = CGPoint(x: 1, y: 1) {
        didSet {
            self.setNeedsLayout()
        }
    }
    
    override func layoutSubviews() {
        let gradientView = CAGradientLayer()
        gradientView.colors = [startColor.cgColor, endColor.cgColor]
        gradientView.startPoint = startPoint
        gradientView.endPoint = endPoint
        gradientView.frame = self.bounds
        self.layer.insertSublayer(gradientView, at: 0)
    }
    
}
