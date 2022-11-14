//
//  AppDelegate.swift
//  VIP
//
//  Created by Nurlan Akylbekov  on 14.11.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    
    window = UIWindow(frame: UIScreen.main.bounds)
    let controller = MainViewController()
    controller.configurator.configure(controller: controller)
    window?.rootViewController = UINavigationController(rootViewController: controller)
    window?.makeKeyAndVisible()
    return true
  }
}

