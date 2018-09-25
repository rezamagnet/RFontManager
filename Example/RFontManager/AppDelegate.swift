//
//  AppDelegate.swift
//  RFontManager
//
//  Created by Reza Khonsari on 09/24/2018.
//  Copyright (c) 2018 Reza Khonsari. All rights reserved.
//

import UIKit
import RFontManager

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        RFM.allFontsOnThisApplication()
        
        // change font method
        RFM.change(to: "SFUIDisplay")
        
        return true
    }

}

