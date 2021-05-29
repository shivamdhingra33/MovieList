//
//  AppDelegate.swift
//  MovieLister
//
//  Created by Fleetx on 29/05/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        self.window = UIWindow(frame: UIScreen.main.bounds)
        if let vc = MovieListViewController.viewController() {
            vc.viewModel = MovieListViewModel()
            let navVc = UINavigationController(rootViewController: vc)
            window?.rootViewController = navVc
            window?.makeKeyAndVisible()
        }
        return true
    }

}

