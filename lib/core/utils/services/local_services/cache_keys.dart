import 'cache_helper.dart';

class CacheKeysManger {
  static String tokenStatus() =>
      CacheHelper.getData(key: 'token') ?? "";
  static int userId() =>
      CacheHelper.getData(key: 'userId') ?? 0;
}
