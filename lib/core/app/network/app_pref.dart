import 'package:flutter/foundation.dart' show debugPrint;
import 'package:khafil_test/core/helpers/cache_helper.dart';

bool? rememberMe;

const String _rememberMeKey = 'rememberMeKey';

class AppPrefs {
  final CacheHelper cacheHelper;

  AppPrefs({required this.cacheHelper});

  Future<void> saveRememberMe(bool value) async {
    await cacheHelper.put(_rememberMeKey, value);
  }

  Future<void> getRememberMe() async {
    try {
      rememberMe = await cacheHelper.getString(_rememberMeKey);
    } catch (e) {
      debugPrint('AppPrefs error: $e');
    }
  }

  Future<void> deleteRememberMe() async {
    await cacheHelper.clear(_rememberMeKey);
  }
}
