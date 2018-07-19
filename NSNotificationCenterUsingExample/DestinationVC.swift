//
//  DestinationVC.swift
//  NSNotificationCenterUsingExample
//
//  Created by Denis Markov on 7/19/18.
//  Copyright © 2018 Denis Markov. All rights reserved.
//

import UIKit

class DestinationVC: UIViewController {

    @IBAction func peruButton(_ sender: Any) {
        NotificationCenter.default.post(name: .peru, object: nil)
    }
    @IBAction func argentinaButton(_ sender: Any) {
        NotificationCenter.default.post(name: .argentina, object: nil)
    }
    

}
