//
//  LoginViewController.swift
//  IOSCoilProject
//
//  Created by 김혜지 on 2016. 7. 21..
//  Copyright © 2016년 김혜지. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController{
    
    @IBAction func doLogin(sender: AnyObject) {
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        appDelegate.createMenuView()
    }
}
