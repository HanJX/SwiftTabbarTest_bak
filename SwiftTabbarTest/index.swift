//
//  index.swift
//  SwiftTabbarTest
//
//  Created by hanJianXin on 15/11/11.
//  Copyright (c) 2015年 hanJianXin. All rights reserved.
//

import UIKit

class index: UIViewController {

    // Do any additional setup after loading the view.
        
    var btn:UIButton?
        
    //按钮事件
    func btnOnClick(){
        print("Onclick")
        let vc = OCViewController()
      //  var vc = carDisplay()
        self.navigationController!.pushViewController(vc, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        //    self.view.backgroundColor=UIColor.grayColor()
        self.title = "首页导航"

        btn=UIButton(frame:CGRectMake(110,80,100,20))
        btn!.backgroundColor=UIColor.redColor()
        btn!.setTitle("测试页导航",forState:.Normal)
        btn!.addTarget(self,action:"btnOnClick",forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(btn!)
        // Do any additional setup after loading the view.
        let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
    }
    
    func anyCommonElements <T: SequenceType, U: SequenceType where T.Generator.Element: Equatable, T.Generator.Element == U.Generator.Element> (lhs: T, _ rhs: U) -> Bool {
        for lhsItem in lhs {
            for rhsItem in rhs {
                if lhsItem == rhsItem {
                    return true
                }
            }
        }
        return false
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

enum OptionalValue<Wrapped> {
    case None
    case Some(Wrapped)
}





