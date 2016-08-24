//
//  TestViewController.swift
//  Original
//
//  Created by tsing.sun on 16/8/22.
//  Copyright © 2016年 tsing.sun. All rights reserved.
//

import Foundation
import UIKit

class TestViewController: UIViewController
{
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        self.navigationItem.title = "首页"
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName:UIColor.whiteColor()]
        self.navigationController?.navigationBar.barTintColor = UIColor.blackColor()
        
        
        
        
    
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
    
   
    
    
    
}
