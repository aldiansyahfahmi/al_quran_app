class AppConstants {
  const AppConstants();

  static App app = const App();
  static CachedKey cachedKey = const CachedKey();
  static AppApi appApi = const AppApi();
  static ErrorKey errorKey = const ErrorKey();
  static ErrorMessage errorMessage = const ErrorMessage();
}

class App {
  const App();

  double get defaultMargin => 16.0;
  String get appName => "Al-Qur'an";
  String get androidAppId => '';
  String get iosAppId => '';
}

class CachedKey {
  const CachedKey();

  String get tokenKey => 'tokenKey';
  String get roleKey => 'roleKey';
}

class AppApi {
  const AppApi();
  String get baseUrlDevelopment => 'https://api.quran.gading.dev/';
  String get baseUrlProduction => 'https://api.quran.gading.dev/';

  String get surah => 'surah';
  String get juz => 'juz';
}

class ErrorKey {
  const ErrorKey();

  String get message => "message";
}

class ErrorMessage {
  const ErrorMessage();

  String get failedGetToken => 'failed get token';
  String get failedGetRole => 'failed get role';
}
