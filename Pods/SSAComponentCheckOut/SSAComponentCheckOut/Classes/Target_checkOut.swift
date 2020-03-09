//
//  Target_checkOut.swift
//  SSAComponentCheckOut
//
//  Created by GuJunBing on 2020/3/8.
//

import UIKit

@objc public class Target_checkOut: NSObject {

    @objc func Action_Extension_ViewController(_ params:NSDictionary) -> UIViewController {

        let checkOutViewController = CheckOutViewController()
        checkOutViewController.goodsName = params["goodsName"] as? String
        checkOutViewController.goodsName = params["goodsId"] as? String
        checkOutViewController.callback = params["callback"] as? (String) -> Void
        return checkOutViewController
    }
}
