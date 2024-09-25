import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'quit_app_method_channel.dart';

abstract class QuitAppPlatform extends PlatformInterface {
  /// Constructs a QuitAppPlatform.
  QuitAppPlatform() : super(token: _token);

  static final Object _token = Object();

  static QuitAppPlatform _instance = MethodChannelQuitApp();

  /// The default instance of [QuitAppPlatform] to use.
  ///
  /// Defaults to [MethodChannelQuitApp].
  static QuitAppPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [QuitAppPlatform] when
  /// they register themselves.
  static set instance(QuitAppPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  void quitApp() {
    throw UnimplementedError('quitApp() has not been implemented.');
  }
}
