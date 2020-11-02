//
//  AppDelegate.swift
//  AEPAnalyticsTestApp
//
//  Created by Praveen Kumar Vivekananthan on 11/1/20.
//  Copyright © 2020 Adobe. All rights reserved.
//

import UIKit
import AEPCore
import AEPIdentity
import AEPAnalytics
import AEPEdge

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        MobileCore.setLogLevel(.debug)
        MobileCore.registerExtensions([Analytics.self, Identity.self, Edge.self])
        MobileCore.updateConfigurationWith(configDict: ["global.privacy": "optedin",
                                                        "experienceCloud.org": "FAF554945B90342F0A495E2C@AdobeOrg",
                                                        "experiencePlatform.configId": "d3d079e7-130e-4ec1-88d7-c328eb9815c4"])
        MobileCore.track(action: "appLaunch", data: ["k1": "v1"])
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

