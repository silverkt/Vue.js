//
//  ViewController.swift
//  FirstApp
//
//  Created by tsing.sun on 16/8/8.
//  Copyright © 2016年 tsing.sun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var label: UILabel!


    override func viewDidLoad() {
    
        super.viewDidLoad()
        
        label!.text = "this is new shit"
        
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

