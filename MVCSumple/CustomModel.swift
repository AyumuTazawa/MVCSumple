//
//  CustomModel.swift
//  MVCSumple
//
//  Created by 田澤歩 on 2021/04/11.
//

import Foundation

class CustomModel {
    
    private var number1: Int?
    private var number2: Int?
    
    func set(_ number1:Int, _ number2: Int) {
        self.number1 = number1
        self.number2 = number2
    }
    
    func get() -> Int {
        let totalVal: Int = self.number1! + self.number2!
        return totalVal
    }
}
