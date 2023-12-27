
import UIKit
import AppCenter
import AppCenterAnalytics
import AppCenterCrashes

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_: UIApplication, didFinishLaunchingWithOptions _: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        // Enabled App Center SDK verbose logs
        AppCenter.logLevel = .verbose
        
        AppCenter.start(withAppSecret: "b43a38dd-3a4f-455c-ae2b-1eab1f6e80bf", services: [
            Analytics.self,
            Crashes.self,
        ])
        
        return true
    }
}
