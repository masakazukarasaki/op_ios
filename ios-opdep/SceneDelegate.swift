//
//  SceneDelegate.swift
//  ios-opdep
//
//  Created by Quang Nguyễn Như on 24/04/2021.
//

import UIKit
import FBSDKCoreKit

@available(iOS 13.0, *)
class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: windowScene)
        window.makeKeyAndVisible()
        self.window = window
        AppLogic.shared.appRouter.window = window
        AppLogic.shared.startUserSession()
    }
    
    func scene(_ scene: UIScene, openURLContexts URLContexts: Set<UIOpenURLContext>) {
//            let openURLContext = Array(URLContexts).first
//            if openURLContext != nil {
//                if let URL = openURLContext?.url, let annotation = openURLContext?.options.annotation {
//                    ApplicationDelegate.shared.application(UIApplication.shared, open: URL, sourceApplication: openURLContext?.options.sourceApplication, annotation: annotation)
//                }
//            }
        guard let url = URLContexts.first?.url else {
                  return
              }
              let _ = ApplicationDelegate.shared.application(
                  UIApplication.shared,
                  open: url,
                  sourceApplication: nil,
                  annotation: [UIApplication.OpenURLOptionsKey.annotation])
        }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

