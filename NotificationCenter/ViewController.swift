//
//  ViewController.swift
//  NotificationCenter
//
//  Created by Lee on 8/12/21.
//

import UIKit

extension Notification.Name {
    static let colorChange = Notification.Name("ColorChanged")
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changedColorTapped(_ sender: Any) {
        // NotificationCenter.default.post(name: Notification.Name("ColorChanged"), object: nil)
        // Using the extension for name
        NotificationCenter.default.post(name: .colorChange, object: nil)
        view.backgroundColor = .red
    }
}

