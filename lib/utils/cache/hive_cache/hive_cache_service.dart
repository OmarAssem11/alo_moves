import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:alo_moves/utils/cache/cache_service.dart';
import 'package:alo_moves/utils/cache/hive_cache/hive_cached_object.dart';
import 'package:alo_moves/utils/constants.dart';
import 'package:alo_moves/utils/exception/app_exception.dart';

@LazySingleton(as: CacheService)
class HiveCacheService implements CacheService {
  final Box<HiveCachedObject> _box;

  const HiveCacheService(this._box);

  @override
  Future<void> put(
    String key,
    dynamic value, {
    int cacheExpireMinutes = CacheConstants.defaultCacheExpireMinutes,
  }) async {
    try {
      final dateTimeNowInMilliseconds = DateTime.now().millisecondsSinceEpoch;
      final cacheExpireInMilliseconds =
          cacheExpireMinutes * CacheConstants.toMillisecondsConverter;
      return _box.put(
        key,
        HiveCachedObject(
          value,
          dateTimeNowInMilliseconds,
          cacheExpireInMilliseconds,
        ),
      );
    } catch (exception) {
      throw CacheException();
    }
  }

  @override
  Future<HiveCachedObject?> get(String key) async {
    try {
      return _box.get(key);
    } catch (exception) {
      throw CacheException();
    }
  }

  @override
  Future<void> delete(String key) async {
    try {
      return _box.delete(key);
    } catch (exception) {
      throw CacheException();
    }
  }
}
