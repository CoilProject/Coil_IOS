//
//  LeftMenuController.swift
//  IOSCoilProject
//
//  Created by 김혜지 on 2016. 7. 19..
//  Copyright © 2016년 김혜지. All rights reserved.
//

import Foundation
import UIKit

enum LeftMenu: Int{
    case Main = 0
    case Ranking
    case Setting
}

protocol LeftMenuProtocol: class {
    func changeViewController(menu: LeftMenu)
}

class LeftMenuController : UIViewController, LeftMenuProtocol{
    
    @IBOutlet weak var tableview: UITableView!
    let cellReuseIdentifier = "MenuCell"
    var menus = ["Main","Ranking","Setting"]
    var mainViewController: UIViewController!
    var rankingViewController: UIViewController!
    var settingViewController: UIViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let rankingViewController = storyboard.instantiateViewControllerWithIdentifier("RankingViewController") as! RankingViewController
        self.rankingViewController = UINavigationController(rootViewController: rankingViewController)
        
        let settingViewController = storyboard.instantiateViewControllerWithIdentifier("SettingViewController") as! SettingViewController
        self.settingViewController = UINavigationController(rootViewController: settingViewController)
        
        tableview.registerClass(BaseTableViewCell.self, forCellReuseIdentifier: cellReuseIdentifier)
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    func changeViewController(menu: LeftMenu) {
        switch menu {
        case .Main:
            self.slideMenuController()?.changeMainViewController(self.mainViewController, close: true)
        case .Ranking:
            self.slideMenuController()?.changeMainViewController(self.rankingViewController, close: true)
        case .Setting:
            self.slideMenuController()?.changeMainViewController(self.settingViewController, close: true)
        }
    }
}

extension LeftMenuController : UITableViewDelegate{
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if let menu = LeftMenu(rawValue: indexPath.item) {
            switch menu {
            case .Main, .Ranking, .Setting:
                return BaseTableViewCell.height()
            }
        }
        return 0
    }
}

extension LeftMenuController : UITableViewDataSource{
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menus.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        if let menu = LeftMenu(rawValue: indexPath.item) {
            switch menu {
            case .Main, .Ranking, .Setting:
                let cell = BaseTableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: BaseTableViewCell.identifier)
                cell.setData(menus[indexPath.row])
                return cell
            }
        }
        return UITableViewCell()
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if let menu = LeftMenu(rawValue: indexPath.item) {
            self.changeViewController(menu)
        }
    }
}
