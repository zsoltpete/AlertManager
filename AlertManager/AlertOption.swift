//
//  AlertOption.swift
//  TestPods
//
//  Created by Zsolt Pete on 2017. 11. 24..
//  Copyright © 2017. Zsolt Pete. All rights reserved.
//

import Foundation

/**
 Class for alert controller buttons handling. Set up title and action.
 */
public class AlertOption {
    
    /// The alert controller button title
    var title: String
    /// The action of the alert controller's button
    var action: (() -> Void)?
    
    /*
     * Create an object with title and action to the alert controller button
     */
    public init(title: String = "", action: (() -> Void)?) {
        self.title = title
        self.action = action
    }
    
}
