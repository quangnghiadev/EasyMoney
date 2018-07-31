//
//  BorderedButton.swift
//  EasyMoney
//
//  Created by Nghia Nguyen on 5/6/18.
//  Copyright © 2018 Nghia Nguyen. All rights reserved.
//

import UIKit

@IBDesignable
class BorderedButton: UIButton {
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.borderColor = UIColor.white.cgColor
        self.layer.borderWidth = 1
    }
}
