//
//  ViewController.swift
//  SSAComponentMainProject
//
//  Created by GuJunBing on 2020/3/7.
//  Copyright © 2020 GuJunBing. All rights reserved.
//

import UIKit
import SSAComponentGoodsDetailCategory
import SSAComponentGoodsDetail
import SwiftHandyFrame
import CTMediator

class ViewController: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        tableView.ct_fill()
    }
    
    // MARK: Lazy
    lazy var tableView : UITableView = {
        let _tableView = UITableView(frame: .zero, style: .plain)
        _tableView.delegate = self
        _tableView.dataSource = self
        _tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return _tableView
    }()

    lazy var dataSource = [
        "金拱门家有金桶（麦乐鸡版）",
        "金拱门家有金桶（汉堡版）",
        "小食分享盒",
        "安格斯厚牛芝士包套餐"
    ]
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    // MARK: UITableViewDelegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = CTMediator.sharedInstance()?.goToGoodsDetailsVC4Swift( { (result) in
            print(result)
        }, goodsId: "test", goodsName: dataSource[indexPath.row])
        navigationController?.pushViewController(controller!, animated: true)
        
    }
       
   func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
       cell.textLabel?.text = dataSource[indexPath.row]
   }

   // MARK: UITableViewDataSource
   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return dataSource.count
   }

   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       return tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
    }
    
}

