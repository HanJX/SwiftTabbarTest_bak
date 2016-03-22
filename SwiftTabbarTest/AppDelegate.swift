//
//  AppDelegate.swift
//  SwiftTabbarTest
//
//  Created by hanJianXin on 15/11/11.
//  Copyright (c) 2015年 hanJianXin. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        // 应用程序启动后
        //.声明一个空视图
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        self.window!.backgroundColor=UIColor.whiteColor()
        //.导航背景颜色
        UINavigationBar.appearance().barTintColor=UIColor.grayColor()
        UIBarButtonItem.appearance().setBackButtonTitlePositionAdjustment(UIOffsetMake(CGFloat(NSInteger.min),CGFloat(NSInteger.min)), forBarMetrics:UIBarMetrics.Default);
        //.导航标题文字颜色
        UINavigationBar.appearance().titleTextAttributes=NSDictionary(object:UIColor.whiteColor(), forKey:NSForegroundColorAttributeName) as? [String : AnyObject];
        //.将状态栏变为白色
        UIApplication.sharedApplication().statusBarStyle = UIStatusBarStyle.LightContent;
        //.设置返回按钮颜色
        UINavigationBar.appearance().tintColor=UIColor.whiteColor();
        //.指定根视图
        let rootView=NTViewController();
        self.window!.rootViewController=rootView;
        self.window!.makeKeyAndVisible();
        //.初始化键盘插件
        //let manage:IQKeyboardManager=IQKeyboardManager.sharedManager();
        //manage.enable=true;
        //manage.shouldResignOnTouchOutside=true;
        //manage.shouldToolbarUsesTextFieldTintColor=true;
        //manage.enableAutoToolbar=true;
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

