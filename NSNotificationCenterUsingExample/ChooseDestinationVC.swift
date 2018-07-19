//
//  ChooseDestinationVC.swift
//  NSNotificationCenterUsingExample
//
//  Created by Denis Markov on 7/19/18.
//  Copyright © 2018 Denis Markov. All rights reserved.
//

import UIKit

class ChooseDestinationVC: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(setToPeru(notification:)), name: .peru, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(setToArgentina(notfication:)), name: .argentina, object: nil)
    }
    
    @IBOutlet weak var cityChosenLabel: UILabel!
    
    @IBAction func chooseButtonTap(_ sender: Any) {
        self.performSegue(withIdentifier: "goToDestinationVCSegue", sender: self)
    }
    
    @objc func setToPeru(notification: NSNotification) {
        cityChosenLabel.text = "Peru"
    }
    @objc func setToArgentina(notfication: NSNotification) {
        cityChosenLabel.text = "Argentina"
    }

}

extension Notification.Name {
    static let peru = Notification.Name("peru")
    static let argentina = Notification.Name("argentina")
}

