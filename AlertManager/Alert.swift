//
//  Alert.swift
//  TestPods
//
//  Created by Zsolt Pete on 2017. 11. 24..
//  Copyright © 2017. Zsolt Pete. All rights reserved.
//

import Foundation

/**
 Object for easily show content with *UIAlertController*.
 */
public class Alert {
    /// Title of the alert controller.
    var title: String
    /// The text which will show on the alert controller.
    var message: String
    /// Options of the alert controller
    var actions: [AlertOption]
    
    /*
     * Initialize am *Alert* object with title, message, and options
     */
    public init(title: String = "", message: String = "", actions: [AlertOption]) {
        self.title = title
        self.message = message
        self.actions = actions
    }
    
}
