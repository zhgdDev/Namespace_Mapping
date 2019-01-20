//
//  DemoViewController.swift
//  Mapping
//
//  Created by Dubai on 2019/1/20.
//  Copyright © 2019 hhcu. All rights reserved.
//

import UIKit

class DemoViewController: BaseViewController
{

    override func viewDidLoad()
    {
        super.viewDidLoad()

        view.backgroundColor = UIColor.blue
    }
    
    @objc private func back()
    {
        navigationController?.popViewController(animated: true)
    }
    
    @objc private func nextAction()
    {
        let vc = DemoViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
}

extension DemoViewController
{
    override func setupUI()
    {
        super.setupUI()
        
         navItem.rightBarButtonItem = UIBarButtonItem(title: "下一个", fontSize: 18, target: self, action: #selector(nextAction), normalColor: UIColor.darkGray, heightColor: UIColor.orange)
    }
}
