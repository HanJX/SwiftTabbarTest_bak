//
//  personalCenter.swift
//  SwiftTabbarTest
//
//  Created by hanJianXin on 15/11/11.
//  Copyright (c) 2015年 hanJianXin. All rights reserved.
//

import UIKit

class personalCenter: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "个人中心"
        self.view.backgroundColor = UIColor.grayColor()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        //      printLetterKinds("Hello")
        testIntExt()
        testOnOffSwitch()
        let ncc1701 = Starship(name: "Enterprise", prefix: "USS")
        print(ncc1701.fullName)
        
        let generator = LinearCongruentialGenerator()
        print("Here's a random number: \(generator.random())")
        // 输出 : "Here's a random number: 0.37464991998171"
        print("And another one: \(generator.random())")
        // 输出 : "And another one: 0.729023776863283"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
