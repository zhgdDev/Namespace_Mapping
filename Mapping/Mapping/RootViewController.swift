//
//  RootViewController.swift
//  Mapping
//
//  Created by Dubai on 2019/1/20.
//  Copyright © 2019 hhcu. All rights reserved.
//

import UIKit

class RootViewController: UITabBarController
{
    private lazy var composeButton:UIButton = UIButton(title: "", image: "btn_addIcon", bgImage: "btn_bgImage")
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white

        setupChildControllers()
        setupComposeButton()
    }
    
    @objc private func composeAction()  {
        print("composeAction")
    }
}

extension RootViewController
{
    private func setupComposeButton()
    {
//        composeButton.backgroundColor = UIColor.blue
//
//        let count = CGFloat(viewControllers!.count)
//        let w = (tabBar.bounds.width) / count
//        composeButton.frame = tabBar.bounds.insetBy(dx:w * 0.75, dy: 0)
//        tabBar.addSubview(composeButton)
//
//        composeButton.addTarget(self, action: #selector(composeAction), for: .touchUpInside)
    }
    
    //设置u所有子控制器
   private func setupChildControllers()
    {
        let array = [["clsName":"HomeViewController","title":"首页","imageName":"tabbar_icons_0_n"],
                     ["clsName":"MineViewController","title":"我的","imageName":"tabbar_icons_1_n"]]
        
        var arrayVC = [UIViewController]()
        
        for d in array {
            arrayVC.append(controller(dict: d))
        }
        
        viewControllers = arrayVC
    }
    
    //映射返回UIViewController
    private func controller(dict:[String:String]) -> UIViewController
    {
        guard let clsName = dict["clsName"],
            let title = dict["title"],
            let imageName = dict["imageName"],
            
            //创建子控制器
            //将clsName转换成UIViewController class
            //swift有命名空间 默认是整个项目
            let cls = NSClassFromString(Bundle.main.nameSpace + "." + clsName) as? UIViewController.Type
            else {
            
                return UIViewController()
        }
        
        
       let vc = cls.init()
        vc.title = title
        vc.tabBarItem.image = UIImage(named: imageName)?.withRenderingMode(.alwaysOriginal)
        
        //设置tabBar的标题字体
        vc.tabBarItem.setTitleTextAttributes([NSAttributedString.Key.foregroundColor:UIColor.orange], for: .highlighted)
        
        //系统默认12
        vc.tabBarItem.setTitleTextAttributes([NSAttributedString.Key.font:UIFont.systemFont(ofSize: 12)], for: UIControl.State(rawValue: 0))
        
        //压栈
        let nav = GDNavgationViewController(rootViewController:vc)
       
        return nav
    }
}

