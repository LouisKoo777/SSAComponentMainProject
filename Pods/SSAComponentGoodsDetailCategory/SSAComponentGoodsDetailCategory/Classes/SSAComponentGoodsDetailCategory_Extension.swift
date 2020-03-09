//
//  SSAComponentGoodsDetailCategory_Extension.swift
//  SSAComponentGoodsDetailCategory
//
//  Created by GuJunBing on 2020/3/8.
//

import CTMediator

public extension CTMediator {
    @objc func goToGoodsDetailsVC4Swift(_ callback:@escaping (String) -> Void,goodsId: String!,goodsName: String!) -> UIViewController? {
        let params = [
            "callback":callback,
            "goodsId":goodsId,
            "goodsName":goodsName,
            kCTMediatorParamsKeySwiftTargetModuleName:"SSAComponentGoodsDetail"
            ] as [AnyHashable : Any]
        if let viewController = self.performTarget("goodsDetail", action: "Extension_ViewController", params: params, shouldCacheTarget: false) as? UIViewController {
            return viewController
        }
        return nil
    }
    
    @objc func goToGoodsDetailsVC4OC(_ callback:@escaping (String) -> Void,goodsId: String!,goodsName: String!) -> UIViewController? {
        let callbackBlock = callback as @convention(block) (String) -> Void
        let callbackBlockObject = unsafeBitCast(callbackBlock, to: AnyObject.self)
        let params = ["callback":callbackBlockObject, "goodsId":goodsId,
                   "goodsName":goodsName] as [AnyHashable:Any]
        if let viewController = self.performTarget("goodsDetail", action: "Extension_ViewController", params: params, shouldCacheTarget: false) as? UIViewController {
            return viewController
        }
        return nil
    }
}


