//
//  UIViewControllerExtension.swift
//  OpenWeatherCT
//
//  Created by Mr.Ved on 4/1/21.
//

import UIKit

extension UIViewController {
    func showAlert(with title: String, and message: String? = nil) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(okAction)
        present(alertController, animated: true, completion: nil)
    }
}


