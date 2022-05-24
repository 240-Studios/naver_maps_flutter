
import 'naver_maps_flutter_platform_interface.dart';

class NaverMapsFlutter {
  Future<String?> getPlatformVersion() {
    return NaverMapsFlutterPlatform.instance.getPlatformVersion();
  }
}
