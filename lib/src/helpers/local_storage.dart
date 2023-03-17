import 'package:get_storage/get_storage.dart';

class LocalStorage {
  final GetStorage _storage = GetStorage();
  static Future<void> init() async {
    await GetStorage.init();
  }

  Future<void> saveUserEmailPassword(String email, String password) async {
    _storage
        .write(_StorageKeys.usercreds, {'email': email, 'password': password});
  }

  Map? getUserEmailPassword() {
    if (_storage.hasData(_StorageKeys.usercreds)) {
      final value = _storage.read(_StorageKeys.usercreds);
      if (value != null && value != '') {
        return value;
      } else {
        return null;
      }
    } else {
      return null;
    }
  }

  Future<void> saveToken(String token) async {
    _storage.write(_StorageKeys.token, {
      'token': token,
    });
  }

  Map? getToken() {
    if (_storage.hasData(_StorageKeys.token)) {
      final value = _storage.read(_StorageKeys.token);
      if (value != null && value != '') {
        return value;
      } else {
        return null;
      }
    } else {
      return null;
    }
  }

  removeToken() {
    if (_storage.hasData(_StorageKeys.token)) {
      _storage.remove(_StorageKeys.token);
    }
  }
}

class _StorageKeys {
  _StorageKeys._();

  static const usercreds = 'user_auth_creds';
  static const token = 'auth_token';
}
