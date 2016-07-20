//
//  BaseTableViewCell.swift
//  IOSCoilProject
//
//  Created by 김혜지 on 2016. 7. 19..
//  Copyright © 2016년 김혜지. All rights reserved.
//

import UIKit

public class BaseTableViewCell : UITableViewCell {
    class var identifier: String { return String.className(self) }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setup()
    }
    
    public override func awakeFromNib() {
    }
    
    public func setup() {
    }
    
    public class func height() -> CGFloat {
        return 48
    }
    
    public func setData(data: Any?) {
        self.backgroundColor = UIColor(red: 241/255, green: 248/255, blue: 233/255, alpha: 0)
        self.textLabel?.font = UIFont.italicSystemFontOfSize(18)
        self.textLabel?.textColor = UIColor(red: 158/255, green: 158/255, blue: 158/255, alpha: 1)
        if let menuText = data as? String {
            self.textLabel?.text = menuText
        }
    }
    
    override public func setHighlighted(highlighted: Bool, animated: Bool) {
        if highlighted {
            self.alpha = 0.4
        } else {
            self.alpha = 1.0
        }
    }
    
    // ignore the default handling
    override public func setSelected(selected: Bool, animated: Bool) {
    }
    
}