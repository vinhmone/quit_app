import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'quit_app_platform_interface.dart';

/// An implementation of [QuitAppPlatform] that uses method channels.
class MethodChannelQuitApp extends QuitAppPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('quit_app');

  @override
  void quitApp() async {
    if (Platform.isAndroid) {
      methodChannel.invokeMethod<String>('quitApp');
    } else {
      exit(0);
    }
  }
}
