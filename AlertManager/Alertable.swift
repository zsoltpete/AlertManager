//
//  Alertable.swift
//  TestPods
//
//  Created by Zsolt Pete on 2017. 11. 24..
//  Copyright © 2017. Zsolt Pete. All rights reserved.
//

import Foundation
import UIKit

/**
 Protocol to handle Alerts
*/
public protocol Alertable {
    /**
     Present an UIAlertController with an Alert
     - parameter alert: An alert object which represent the alert components
    */
    func present(_ alert: Alert)
    /**
     Customize the alert controller
     - parameter alertController: The actual alert controller
     */
    func style(alertController: UIAlertController)
}

extension Alertable where Self: UIViewController{
    /**
     Extension for the presentation of an alert. On call it shows an alert controller with the specific *Alert*
     - parameter alert: An alert object which represent the alert components
     */
    public func present(_ alert: Alert){
        let alertController = AlertManager.shared.createPopUp(alert: alert)
        style(alertController: alertController)
        self.present(alertController, animated: true, completion: nil)
    }
}
