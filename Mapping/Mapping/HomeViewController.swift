//
//  HomeViewController.swift
//  Mapping
//
//  Created by Dubai on 2019/1/20.
//  Copyright © 2019 hhcu. All rights reserved.
//

import UIKit

class HomeViewController: BaseViewController
{
 
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @objc private func showFriend() {
        print("好友")
        let vc = DemoViewController()
        navigationController?.pushViewController(vc, animated: true)
    }

}

extension HomeViewController {
   
    @objc override func setupUI() {
        super.setupUI()
        view.backgroundColor = UIColor.yellow
        
        navItem.leftBarButtonItem = UIBarButtonItem(title: "好友", fontSize: 18, target: self, action: #selector(showFriend), normalColor: UIColor.darkGray, heightColor: UIColor.orange)
    }
}
