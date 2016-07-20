//
//  UIViewController.swift
//  IOSCoilProject
//
//  Created by 김혜지 on 2016. 7. 19..
//  Copyright © 2016년 김혜지. All rights reserved.
//

import UIKit

extension UIViewController{
    
    /*
     * set Left Navigation Btn ..Menu btn
     */
    func setNavigationBarItem() {
        self.addLeftBarButtonWithImage(UIImage(named: "ic_menu_black_24dp")!)
        self.slideMenuController()?.removeLeftGestures()
        self.slideMenuController()?.removeRightGestures()
        self.slideMenuController()?.addLeftGestures()
        self.slideMenuController()?.addRightGestures()
    }
    
    /*
     * remove all Navigation Btn
     */
    func removeNavigationBarItem() {
        self.navigationItem.leftBarButtonItem = nil
        self.navigationItem.rightBarButtonItem = nil
        self.slideMenuController()?.removeLeftGestures()
        self.slideMenuController()?.removeRightGestures()
    }
}
