//
//  NavigationController.swift
//  Original
//
//  Created by tsing.sun on 16/8/22.
//  Copyright © 2016年 tsing.sun. All rights reserved.
//

import Foundation
import UIKit

class NavigationController:XQUINavigationController
{
    override func childViewControllerForStatusBarStyle() -> UIViewController? {
        return self.topViewController
    }
    
}