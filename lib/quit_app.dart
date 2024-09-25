import 'quit_app_platform_interface.dart';

class QuitApp {
  void quitApp() {
    return QuitAppPlatform.instance.quitApp();
  }
}
