import Flutter
import UIKit

public class QuitAppPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "quit_app", binaryMessenger: registrar.messenger())
    let instance = QuitAppPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "quitApp":
    return
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
