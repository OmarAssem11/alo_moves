abstract class CacheService {
  Future<void> put(
    String key,
    dynamic value, {
    int cacheExpireMinutes,
  });

  Future<CachedObject?> get(String key);

  Future<void> delete(String key);
}

abstract class CachedObject {
  dynamic get value;

  bool isExpired();
}
