//
//  CheckOutViewController.swift
//  SSAComponentCheckOut
//
//  Created by GuJunBing on 2020/3/8.
//

import UIKit

public class CheckOutViewController: UIViewController {
    
    var goodsName : String?
    var goodsId : String?
    var callback: ((String) -> Void)?

    public override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        
        self.title = "确认订单" + (goodsName ?? "")
        
        view.addSubview(buyBtn)
    }
    
    public override func viewWillLayoutSubviews() {
        super .viewWillLayoutSubviews()
        buyBtn.frame = CGRect(x: view.frame.size.height*0.25, y: view.frame.size.height*0.5-60, width: view.frame.size.width*0.5, height: 60)
    }

    lazy var buyBtn : UIButton = {
        let _buyBtn = UIButton(type:.custom)
        _buyBtn.setTitle("愉快的下单", for: .normal)
        _buyBtn.setTitleColor(UIColor.white, for: .normal)
        _buyBtn.backgroundColor = UIColor.red
        _buyBtn.addTarget(self, action: #selector(clickBuyBtn), for: .touchUpInside)
       return _buyBtn
    }()
}

extension CheckOutViewController {
    @objc func clickBuyBtn() -> Void {
        
        if self.callback != nil {
            self.navigationController?.popViewController(animated: true)
            callback!("下单成功");
        }
    }
}


