//
//  ViewController.swift
//  MVCSumple
//
//  Created by 田澤歩 on 2021/04/11.
//

import UIKit

class ViewController: UIViewController {
    
    var customView: CustomView!
    var customModel = CustomModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customView = CustomView()
        
        customView.delegate = self
        view.addSubview(customView)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        customView.frame = CGRect(x: view.safeAreaInsets.left,
                                  y: view.safeAreaInsets.top,
                                  width: view.frame.size.width - view.safeAreaInsets.left - view.safeAreaInsets.right,
                                  height: view.frame.size.height - view.safeAreaInsets.bottom
        )
    }
    
}

extension ViewController: CustomViewDelegate{
    
    func setTotalVal(_ num1: Int, _ num2: Int) {
        customModel.set(num1, num2)
    }
    
    func getTotalVal() -> Int {
        let totalVal = customModel.get()
        return totalVal
    }
    
}

