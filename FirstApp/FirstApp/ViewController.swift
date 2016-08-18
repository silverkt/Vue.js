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
    @IBOutlet var label2 : UILabel!


    override func viewDidLoad() {
    
        super.viewDidLoad()
        let x:CGRect = CGRectMake(10,20, 300, 200)
    
        let lbel:UILabel! = UILabel(frame:x)
        lbel.text = "sdfa"
    
        
        self.view.addSubview(lbel)
      
        
    
    }
    @IBAction func confirmBt(sender: AnyObject) {
        
    }
    
    @IBAction func onclick(sender: UIButton) {
        label.text = "this is new shit"
        label2.text = "en"
   

    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}

