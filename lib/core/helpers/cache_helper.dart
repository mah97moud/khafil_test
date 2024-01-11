import 'dart:convert';

import 'package:flutter/foundation.dart' show debugPrint;
import 'package:shared_preferences/shared_preferences.dart';

sealed class CacheHelper {
  Future<dynamic> getString(String key);
  Future<bool?> put(String key, dynamic value);
  Future<bool?> clear(String key);
}

class CacheHelperImpl implements CacheHelper {
  final SharedPreferences _sharedPreferences;

  CacheHelperImpl({required SharedPreferences sharedPreferences})
      : _sharedPreferences = sharedPreferences;

  @override
  Future<dynamic> getString(String key) async {
    final dynamic result = await _errorHandler(() async {
      var value = _sharedPreferences.getString(key);
      if (value == null) {
        return null;
      } else {
        return await jsonDecode(value);
      }
    });
    return result;
  }

  @override
  Future<bool?> put(String key, dynamic value) async {
    final bool? result = await _errorHandler(() async {
      return await _sharedPreferences.setString(key, jsonEncode(value));
    });
    return result;
  }

  @override
  Future<bool?> clear(String key) async {
    final bool? result = await _errorHandler(() async {
      return await _sharedPreferences.remove(key);
    });

    return result;
  }
}

extension on CacheHelper {
  Future<T?> _errorHandler<T>(
    Future<T?> Function() onSuccess,
  ) async {
    try {
      final result = await onSuccess();
      return result;
    } catch (e) {
      debugPrint('CacheHelper error: $e');
      return null;
    }
  }
}
