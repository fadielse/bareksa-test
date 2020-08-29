//
//  BaseViewController.swift
//  Bareksa Test
//
//  Created by Fadilah Hasan on 27/08/20.
//  Copyright © 2020 KodingKita. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func showAlert(message: String) {
        let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        alert.addAction(
            UIAlertAction(title: "OK", style: .default, handler: nil)
        )
        self.present(alert, animated: true, completion: nil)
    }
}
