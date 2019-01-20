//
//  GDBarButtonItem+Extension.swift
//  Mapping
//
//  Created by Dubai on 2019/1/20.
//  Copyright © 2019 hhcu. All rights reserved.
//

import UIKit

extension UIBarButtonItem
{
    convenience init(title: String, fontSize: CGFloat = 16, target: AnyObject?, action: Selector, normalColor: UIColor = UIColor.darkGray, heightColor: UIColor = UIColor.orange, isBackButton: Bool = false, backImage: String = "")
    {
        let btn = UIButton(type: .custom)
        if isBackButton {
            btn.setImage(UIImage(named: backImage), for: UIControl.State(rawValue: 0))
            btn.setImage(UIImage(named: backImage), for: .highlighted)
        }
        btn.setTitle(title, for: .normal)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: fontSize)
        btn.setTitleColor(normalColor, for: .normal)
        btn.setTitleColor(heightColor, for: .highlighted)
        btn.addTarget(target, action: action, for: .touchUpInside)
        btn.sizeToFit()
        self.init(customView: btn)
    }
}
