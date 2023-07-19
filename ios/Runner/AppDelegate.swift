import UIKit
import Flutter
import GoogleMaps
import workmanager

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GMSServices.provideAPIKey("AIzaSyCgiB7NYGvrW77rwJsKDyTsguxH8vPH_Eo")

    WorkmanagerPlugin.registerTask(withIdentifier: "dev.ivirtex.starcat.autoNextLaunchCheck")
    WorkmanagerPlugin.registerTask(withIdentifier: "dev.ivirtex.starcat.userSpecifiedCheck")

    UIApplication.shared.setMinimumBackgroundFetchInterval(TimeInterval(60*15))
    
    if #available(iOS 10.0, *) {
      UNUserNotificationCenter.current().delegate = self as? UNUserNotificationCenterDelegate
    }

    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
