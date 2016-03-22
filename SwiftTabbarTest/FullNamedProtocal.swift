//
//  FullNamedProtocal.swift
//  SwiftTabbarTest
//
//  Created by hanJianXin on 15/11/13.
//  Copyright (c) 2015年 hanJianXin. All rights reserved.
//

import Foundation

protocol FullyNamed {
    var fullName: String { get }
}

class LinearCongruentialGenerator: RandomNumberGenerator {
    var lastRandom = 42.0
    let m = 139968.0
    let a = 3877.0
    let c = 29573.0
    func random() -> Double {
        lastRandom = ((lastRandom * a + c) % m)
        return lastRandom / m
    }
}

class Starship: FullyNamed {
    var prefix: String?
    var name: String
    init(name: String, prefix: String? = nil) {
        self.name = name
        self.prefix = prefix
    }
    var fullName: String {
        return (prefix != nil ? prefix! + " " : "") + name
    }
}
//var ncc1701 = Starship(name: "Enterprise", prefix: "USS")
// ncc1701.fullName 是 "USS Enterprise"

protocol Togglable {
    mutating func toggle()
}


enum OnOffSwitch: Togglable {
    case Off, On
    mutating func toggle() {
        switch self {
        case Off:
            self = On
        case On:
            self = Off
        }
    }
}

func testOnOffSwitch(){
    var lightSwitch = OnOffSwitch.Off
    lightSwitch.toggle()
    print(lightSwitch.hashValue)
    lightSwitch.toggle()
    print(lightSwitch.hashValue)
}


protocol RandomNumberGenerator {
    func random() -> Double
}


