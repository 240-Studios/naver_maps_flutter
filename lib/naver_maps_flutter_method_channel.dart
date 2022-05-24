import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'naver_maps_flutter_platform_interface.dart';

/// An implementation of [NaverMapsFlutterPlatform] that uses method channels.
class MethodChannelNaverMapsFlutter extends NaverMapsFlutterPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('naver_maps_flutter');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
