//
//  Target_goodsDetail.swift
//  SSAComponentGoodsDetail
//
//  Created by junbing.gu@soprasteria.com on 03/09/2020.
//  Copyright (c) 2020 junbing.gu@soprasteria.com. All rights reserved.
//

import UIKit

@objc public class Target_goodsDetail: NSObject {

    @objc func Action_Extension_ViewController(_ params:NSDictionary) -> UIViewController {
        if let callback = params["callback"] as? (String) -> Void {
            callback("success")
        }

        let goodsDetailViewController = GooodsDetailViewController()
        goodsDetailViewController.goodsName = params["goodsName"] as? String
        goodsDetailViewController.goodsId = params["goodsId"] as? String
        return goodsDetailViewController
    }
    
    @objc func Action_Category_ViewController(_ params:NSDictionary) -> UIViewController {
        
        if let block = params["callback"] {
            
            typealias CallbackType = @convention(block) (NSString) -> Void
            let blockPtr = UnsafeRawPointer(Unmanaged<AnyObject>.passUnretained(block as AnyObject).toOpaque())
            let callback = unsafeBitCast(blockPtr, to: CallbackType.self)
            
            callback("success")
        }
        
        let goodsDetailViewController = GooodsDetailViewController()
        goodsDetailViewController.goodsName = params["goodsName"] as? String
        goodsDetailViewController.goodsName = params["goodsId"] as? String
        return goodsDetailViewController
    }
}
