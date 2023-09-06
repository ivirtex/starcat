import Flutter
import GoogleMaps
import UIKit
import workmanager

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
    static func registerPlugins(with registry: FlutterPluginRegistry) {
        GeneratedPluginRegistrant.register(with: registry)
    }

    override func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        GMSServices.provideAPIKey("AIzaSyCdg6Gj1eREabQ43KTxcq560aEm2JrCkTs")

        WorkmanagerPlugin.registerTask(withIdentifier: "dev.ivirtex.starcat.autoNextLaunchCheck")
        WorkmanagerPlugin.registerTask(withIdentifier: "dev.ivirtex.starcat.userSpecifiedCheck")

        UIApplication.shared.setMinimumBackgroundFetchInterval(TimeInterval(60 * 15))

        AppDelegate.registerPlugins(with: self)
        WorkmanagerPlugin.setPluginRegistrantCallback { registry in
            AppDelegate.registerPlugins(with: registry)
        }

        return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }
}
