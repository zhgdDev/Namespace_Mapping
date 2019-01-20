//
//  BaseViewController.swift
//  Mapping
//
//  Created by Dubai on 2019/1/20.
//  Copyright © 2019 hhcu. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController
{
    lazy var navigationBar = GDNavigationBar()
    lazy var navItem = UINavigationItem()
    
    override var title: String? {
        didSet {
            navItem.title = title
        }
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        setupUI()
    }
    
}

extension BaseViewController {
    
    @objc func setupUI()  {
        view.backgroundColor = UIColor.green
        self.navigationBar.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 64)
        view.addSubview(navigationBar)
        navigationBar.items = [navItem]
        
        //navBar的渲染t颜色
        navigationBar.barTintColor = UIColor.white
        
        //nabBar字体颜色
        //navigationBar.tintColor = UIColor.red
        navigationBar.titleTextAttributes =  [NSAttributedString.Key.foregroundColor: UIColor.darkGray]
        navigationBar.titleTextAttributes =  [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 18)]

    }
}
