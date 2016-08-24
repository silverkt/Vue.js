//
//  TabBarController.swift
//  Original
//
//  Created by tsing.sun on 16/8/22.
//  Copyright © 2016年 tsing.sun. All rights reserved.
//

import Foundation
import UIKit

class TabBarController: XQUITabBarController
{
    var TabRootController:UIViewController?
    
    var img:UIImage?
    var selectimg:UIImage?
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        //tab1
        self.TabRootController = TestViewController()
        let tab1 = NavigationController(rootViewController:self.TabRootController!)
        self.img = UIImage(named: "yxx_user.png")
        self.selectimg = UIImage(named: "yxx_user_sel.png")
        tab1.tabBarItem = UITabBarItem(title: "我的", image: self.img, selectedImage: self.selectimg)
        
        //tab2
        self.TabRootController = test2()
        let tab2 = NavigationController(rootViewController:self.TabRootController!)
        self.img = UIImage(named: "yxx_lock.png")
        self.selectimg = UIImage(named: "yxx_lock_sel.png")
        tab2.tabBarItem = UITabBarItem(title: "购物袋", image: self.img, selectedImage: self.selectimg)
        
        //tab3
        self.TabRootController = test2()
        let tab3 = NavigationController(rootViewController:self.TabRootController!)
        self.img = UIImage(named: "yxx_clock.png")
        self.selectimg = UIImage(named: "yxx_clock_sel.png")
        tab3.tabBarItem = UITabBarItem(title: "时间轴", image: self.img, selectedImage: self.selectimg)
        
        //tab4
        self.TabRootController = test2()
        let tab4 = NavigationController(rootViewController:self.TabRootController!)
        self.img = UIImage(named: "yxx_ticket.png")
        self.selectimg = UIImage(named: "yxx_ticket_sel.png")
        tab4.tabBarItem = UITabBarItem(title: "优惠券", image: self.img, selectedImage: self.selectimg)
        
        //tab5
        self.TabRootController = test2()
        let tab5 = NavigationController(rootViewController:self.TabRootController!)
        self.img = UIImage(named: "yxx_gear.png")
        self.selectimg = UIImage(named: "yxx_gear_sel.png")
        tab5.tabBarItem = UITabBarItem(title: "设置", image: self.img, selectedImage: self.selectimg)
        
        self.viewControllers = [tab1,tab2,tab3,tab4,tab5]
    }
    
}
