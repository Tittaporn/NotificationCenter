//
//  SecondViewController.swift
//  NotificationCenter
//
//  Created by Lee on 8/12/21.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(notificationReceived), name: Notification.Name("ColorChanged"), object: nil)
    }
    
    @objc func notificationReceived() {
        view.backgroundColor = .red
    }
}


