import 'package:flutter_test/flutter_test.dart';
import 'package:naver_maps_flutter/naver_maps_flutter.dart';
import 'package:naver_maps_flutter/naver_maps_flutter_platform_interface.dart';
import 'package:naver_maps_flutter/naver_maps_flutter_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockNaverMapsFlutterPlatform 
    with MockPlatformInterfaceMixin
    implements NaverMapsFlutterPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final NaverMapsFlutterPlatform initialPlatform = NaverMapsFlutterPlatform.instance;

  test('$MethodChannelNaverMapsFlutter is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelNaverMapsFlutter>());
  });

  test('getPlatformVersion', () async {
    NaverMapsFlutter naverMapsFlutterPlugin = NaverMapsFlutter();
    MockNaverMapsFlutterPlatform fakePlatform = MockNaverMapsFlutterPlatform();
    NaverMapsFlutterPlatform.instance = fakePlatform;
  
    expect(await naverMapsFlutterPlugin.getPlatformVersion(), '42');
  });
}
