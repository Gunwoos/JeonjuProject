//
//  ButtonSet.swift
//  Tong
//
//  Created by 임건우 on 2018. 10. 3..
//  Copyright © 2018년 lims. All rights reserved.
//

import UIKit

func ButtonFrameSet(_ sender: UIButton){
    sender.frame.size = CGSize(width: 50, height: 50)
}

func ButtonStyleSet(_ sender: UIButton){
    sender.layer.borderWidth = 1
    sender.layer.borderColor = UIColor.black.cgColor
    sender.layer.cornerRadius = 25
}
