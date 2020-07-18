//
//  AppDelegate.swift
//  GoodNews
//
//  Created by Burak Tunc on 17.07.2020.
//  Copyright © 2020 Burak Tunç. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        UINavigationBar.appearance().barTintColor = UIColor(displayP3Red: 47/255, green: 54/255, blue: 64/255, alpha: 1.0)
        UINavigationBar.appearance().largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black]
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        
        return true
    }



}

