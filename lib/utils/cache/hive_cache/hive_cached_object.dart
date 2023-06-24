import 'package:alo_moves/utils/cache/cache_service.dart';
import 'package:alo_moves/utils/constants.dart';
import 'package:hive/hive.dart';

part 'hive_cached_object.g.dart';

@HiveType(typeId: CacheConstants.cachedObjectTypeId)
class HiveCachedObject extends CachedObject {
  @HiveField(0)
  final dynamic _value;
  @HiveField(1)
  final int _storeTimeInMilliseconds;
  @HiveField(2)
  final int _cacheExpireTimeInMilliseconds;

  HiveCachedObject(
    this._value,
    this._storeTimeInMilliseconds,
    this._cacheExpireTimeInMilliseconds,
  );

  @override
  dynamic get value => _value;

  @override
  bool isExpired() =>
      DateTime.now().millisecondsSinceEpoch - _storeTimeInMilliseconds >=
      _cacheExpireTimeInMilliseconds;
}
