//
//  ViewController.swift
//  IOSCoilProject
//
//  Created by 김혜지 on 2016. 7. 19..
//  Copyright © 2016년 김혜지. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var abataView: UIImageView!
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.setNavigationBarItem()
        
        abataView.image = UIImage(named: "image_abata")!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

