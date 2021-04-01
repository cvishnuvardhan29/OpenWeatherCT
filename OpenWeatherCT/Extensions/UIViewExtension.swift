//
//  UIViewExtension.swift
//  OpenWeatherCT
//
//  Created by Mr.Ved on 4/1/21.
//

import UIKit

extension UIView {
    func addBottomBorder(){
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0, y: self.frame.size.height - 1, width: self.frame.size.width, height: 0.5)
        bottomLine.backgroundColor = UIColor.lightGray.cgColor
        layer.addSublayer(bottomLine)
    }
}
