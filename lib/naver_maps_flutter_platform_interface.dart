import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'naver_maps_flutter_method_channel.dart';

abstract class NaverMapsFlutterPlatform extends PlatformInterface {
  /// Constructs a NaverMapsFlutterPlatform.
  NaverMapsFlutterPlatform() : super(token: _token);

  static final Object _token = Object();

  static NaverMapsFlutterPlatform _instance = MethodChannelNaverMapsFlutter();

  /// The default instance of [NaverMapsFlutterPlatform] to use.
  ///
  /// Defaults to [MethodChannelNaverMapsFlutter].
  static NaverMapsFlutterPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [NaverMapsFlutterPlatform] when
  /// they register themselves.
  static set instance(NaverMapsFlutterPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
