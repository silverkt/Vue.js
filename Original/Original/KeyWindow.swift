//
//  KeyWindow.swift
//  Original
//
//  Created by tsing.sun on 16/8/22.
//  Copyright © 2016年 tsing.sun. All rights reserved.
//


import Foundation
import UIKit

class KeyWindow: NSObject {
    
    
    static var window: UIWindow?    
    
    class func run() {
        self.window = UIWindow(frame:UIScreen.mainScreen().bounds)
        self.window?.backgroundColor = UIColor.redColor()
        self.window?.makeKeyAndVisible()
        self.window?.rootViewController = self.getWindowController()
    }
    
    class func getWindowController()->TabBarController{
        return TabBarController()
    }
}