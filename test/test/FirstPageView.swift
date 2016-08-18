//
//  FirstPageView.swift
//  test
//
//  Created by tsing.sun on 16/8/18.
//  Copyright © 2016年 tsing.sun. All rights reserved.
//

import Foundation
import UIKit

class FirstPageView: UIView
{
    init() {
        super.init(frame: UIScreen.mainScreen().bounds)
        self.backgroundColor = UIColor.purpleColor()
        let button1: UIButton = UIButton(type: .System)
        button1.frame = CGRect(x: 20, y: 50, width: 150, height: 80)
        //UIButton(frame: CGRect(x: 20, y: 50, width: 150, height: 80))
        //button1.backgroundColor = UIColor.blackColor()
        button1.setTitle("dianji", forState: .Normal)
        button1.addTarget(self, action: "btnclick", forControlEvents: .TouchUpInside)
       
        print(button1.buttonType)
        self.addSubview(button1)
        
        
    }
    
    func btnclick()->Void{
        
        self.backgroundColor = UIColor.blueColor()
        //let win: UIWindow! = UIApplication.sharedApplication().keyWindow
        let superv: UIView? = self.superview
        self.removeFromSuperview()
        let sec: UIView = SecondPageView()
        superv?.addSubview(sec)
        
        
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
