//
//  AlertManager.swift
//  insimu-ios
//
//  Created by Zsolt Pete on 2017. 08. 31..
//  Copyright © 2017. CodeYard. All rights reserved.
//

import Foundation
import UIKit

/**
 * Manage easily alert controllers.
 */
public class AlertManager{
    
    static var shared = AlertManager()
    
    private init(){
    }
    /*
     * Crete an alert controller with an *Alert*
     * - parameter alert: Object what show the aler alert controller
     * return: Returns a alert controller with the specific *Alert*
     */
    public func createPopUp(alert: Alert) -> UIAlertController{
        let alertViewController = UIAlertController(title: alert.title, message: alert.message, preferredStyle: .alert)
        alert.actions.forEach { (option) in
            let buttonAction = UIAlertAction(title: option.title, style: .default, handler: { (alert) in
                option.action?()
            })
            alertViewController.addAction(buttonAction)
        }
        
        return alertViewController
    }
    
}

