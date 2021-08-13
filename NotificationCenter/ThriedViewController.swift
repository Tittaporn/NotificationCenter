//
//  ThriedViewController.swift
//  NotificationCenter
//
//  Created by Lee on 8/12/21.
//

import UIKit

class ThriedViewController: UIViewController {
    // TO Remove Notification.
    deinit {
      NotificationCenter.default
       .removeObserver(self, name:  NSNotification.Name("ColorChanged"), object: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(notificationReceived), name: Notification.Name("ColorChanged"), object: nil)
        DispatchQueue.main.asyncAfter(deadline: .now() + 10) {
            print("=================== Delay ======================")
           // NotificationCenter.default.removeObserver(self)
        }
        perform(#selector(showText), with: nil, afterDelay: 20)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        // Or Remove Notification Here...
        NotificationCenter.default.removeObserver(self)
    }
    
    @objc func notificationReceived() {
        view.backgroundColor = .red
    }
    @objc func showText() {
       print("perform(#selector(showText), with: nil, afterDelay: 20)")
       // NotificationCenter.default.removeObserver(self)
    }
}

