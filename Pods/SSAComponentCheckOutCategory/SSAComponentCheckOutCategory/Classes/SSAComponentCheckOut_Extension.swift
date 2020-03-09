//
//  SSAComponentCheckOut_Extension.swift
//  Pods-SSAComponentCheckOutCategory_Example
//
//  Created by GuJunBing on 2020/3/8.
//

import CTMediator

public extension CTMediator {
    @objc func goToCheckOutVC4Swift(_ callback:@escaping (String) -> Void,goodsId: String!,goodsName: String!) -> UIViewController? {
        let params = [
            "callback":callback,
            "goodsId":goodsId,
            "goodsName":goodsName,
            kCTMediatorParamsKeySwiftTargetModuleName:"SSAComponentCheckOut"
            ] as [AnyHashable : Any]
        if let viewController = self.performTarget("checkOut", action: "Extension_ViewController", params: params, shouldCacheTarget: false) as? UIViewController {
            return viewController
        }
        return nil
    }
}
