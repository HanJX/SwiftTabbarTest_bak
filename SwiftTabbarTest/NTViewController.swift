//
//  NTViewController.swift
//  SwiftTabbarTest
//
//  Created by hanJianXin on 15/11/11.
//  Copyright (c) 2015年 hanJianXin. All rights reserved.
//

import UIKit

class NTViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //.创建首页导航控制器
        let vwIndex=index();
        let navIndex=UINavigationController(rootViewController: vwIndex);
        navIndex.title="首页";
        navIndex.tabBarItem.image=UIImage(named: "home.png")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal); //默认显示图片
        navIndex.tabBarItem.selectedImage=UIImage(named: "homes.png")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal); //选中后的图片
        //.创建活动信息导航控制器
        let vwActivityInfo=activityInfo();
        let navActivityInfo=UINavigationController(rootViewController: vwActivityInfo);
        navActivityInfo.title="活动信息";
        navActivityInfo.tabBarItem.image=UIImage(named: "Activity-information.png")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal);
        navActivityInfo.tabBarItem.selectedImage=UIImage(named: "Activity-informations.png")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal);
        //.创建车辆展示导航控制器
        let vwCarDisplay=carDisplay();
        let navCarDisplay=UINavigationController(rootViewController: vwCarDisplay);
        navCarDisplay.title="车辆展示";
        navCarDisplay.tabBarItem.image=UIImage(named: "Vehicle-display.png")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal);
        navCarDisplay.tabBarItem.selectedImage=UIImage(named: "Vehicle-displays.png")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal);
        //.创建个人中心导航控制器
        let vwPersonalCenter=personalCenter();
        let navPersonalCenter=UINavigationController(rootViewController: vwPersonalCenter);
        navPersonalCenter.title="个人中心";
        navPersonalCenter.tabBarItem.image=UIImage(named: "Personal-Center.png")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal);
        navPersonalCenter.tabBarItem.selectedImage=UIImage(named: "Personal-Centers.png")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal);
        //.添加到工具栏
        let items=[navIndex,navActivityInfo,navCarDisplay,navPersonalCenter];
        self.viewControllers=items;
        self.navigationController?.navigationBar.tintColor=UIColor.whiteColor();
        //.自定义工具栏
        self.tabBar.backgroundColor=UIColor.clearColor();
        //底部工具栏背景颜色
        self.tabBar.barTintColor=UIColor.brownColor()
        //.设置底部工具栏文字颜色（默认状态和选中状态）
        UITabBarItem.appearance().setTitleTextAttributes(NSDictionary(object:UIColor.whiteColor(), forKey:NSForegroundColorAttributeName) as? [String : AnyObject], forState:UIControlState.Normal);
//        UITabBarItem.appearance().setTitleTextAttributes(NSDictionary(object:UIColor.blueWithTabbar(), forKey:NSForegroundColorAttributeName) as? [String : AnyObject], forState:UIControlState.Selected)
        //self.tabBar.tintColorDidChange()=UIColor.greenColor();
        //    let viewBar=UIView(frame:CGRectMake(,,UIScreen.mainScreen().bounds.width, ));
        //    viewBar.backgroundColor=UIColor(patternImage:UIImage(named:"TabbarBg.png")!);
        //    self.tabBar.insertSubview(viewBar, atIndex:)
        //    self.tabBar.opaque=true
        //    self.tabBar.tintColor=UIColor.appMainColor();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
