//
//  CustomModel.swift
//  MVCSumple
//
//  Created by 田澤歩 on 2021/04/11.
//

import Foundation

class CustomModel {
    
    private var num1: Int?
    private var num2: Int?
    
    func set(_ num1:Int, _ num2: Int) {
        self.num1 = num1
        self.num2 = num2
    }
    
    func get() -> Int {
        let totalVal: Int = self.num1! + self.num2!
        return totalVal
    }
}
