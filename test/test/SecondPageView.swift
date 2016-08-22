//
//  SecondPageView.swift
//  test
//
//  Created by tsing.sun on 16/8/18.
//  Copyright © 2016年 tsing.sun. All rights reserved.
//

import Foundation
import UIKit

class SecondPageView: UIView
{
    init() {
        super.init(frame: UIScreen.mainScreen().bounds)
        self.backgroundColor = UIColor.whiteColor()
        let button1: UIButton = UIButton(type: .System)
        button1.frame = CGRect(x: 20, y: 50, width: 150, height: 80)
        //UIButton(frame: CGRect(x: 20, y: 50, width: 150, height: 80))
        //button1.backgroundColor = UIColor.blackColor()
        button1.setTitle("dianji", forState: .Normal)
        let fc: NSObject? = FirstPageController()
        button1.addTarget(fc, action:Selector("btnclick"), forControlEvents: .TouchUpInside)
        
        self.addSubview(button1)
        
        
    }
    
//    func btnclick()->Void{
//        let superv: UIView? = self.superview
//        let lb:UILabel? = UILabel(frame: CGRect(x: 0, y: 0, width: 50, height: 20))
//        lb?.text = "sss"
//        self.addSubview(lb!)
//       
//        self.removeFromSuperview()
//        let secv:UIView = FirstPageView()
//        superv?.addSubview(secv)
//        
//    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
