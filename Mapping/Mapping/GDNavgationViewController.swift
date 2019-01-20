//
//  GDNavgationViewController.swift
//  Mapping
//
//  Created by Dubai on 2019/1/20.
//  Copyright © 2019 hhcu. All rights reserved.
//

import UIKit

class GDNavgationViewController: UINavigationController
{
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationBar.isHidden = true
       // interactivePopGestureRecognizer!.isEnabled = true
  
    }
    
    @objc func pop() {
        popViewController(animated: true)
    }
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool)
    {
        
        if viewControllers.count > 0
        {
           viewController.hidesBottomBarWhenPushed = true
            if let vc = viewController as? BaseViewController
            {
                var title = "返回"
                if viewControllers.count == 1 {
                    title = viewControllers[0].title ?? "返回"
                }
                
                vc.navItem.leftBarButtonItem = UIBarButtonItem(title: title, target: self, action: #selector(pop), isBackButton: true, backImage:"GD_NavBarback_ICON")
            }
        }
        
        super.pushViewController(viewController, animated: true)
    }
}
