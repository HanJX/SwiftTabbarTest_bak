//
//  IntExt.swift
//  SwiftTabbarTest
//
//  Created by hanJianXin on 15/11/13.
//  Copyright (c) 2015年 hanJianXin. All rights reserved.
//

import Foundation

extension Int {
    var add: Int {return self + 100 }
    var sub: Int { return self - 10 }
    var mul: Int { return self * 10 }
    var div: Int { return self / 5 }
}

func testIntExt(){
    let addition = 3.add
    print("Addition is \(addition)")
    
    let subtraction = 120.sub
    print("Subtraction is \(subtraction)")
    
    let multiplication = 39.mul
    print("Multiplication is \(multiplication)")
    
    let division = 55.div
    print("Division is \(division)")
    
    let mix = 30.add + 34.sub
    print("Mixed Type is \(mix)")
}