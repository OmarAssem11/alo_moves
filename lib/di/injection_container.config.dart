// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive/hive.dart' as _i7;
import 'package:hive_flutter/hive_flutter.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;
import 'package:alo_moves/di/app_module.dart' as _i9;
import 'package:alo_moves/utils/cache/cache_service.dart' as _i5;
import 'package:alo_moves/utils/cache/hive_cache/hive_cache_service.dart'
    as _i6;
import 'package:alo_moves/utils/cache/hive_cache/hive_cached_object.dart'
    as _i4;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    await gh.lazySingletonAsync<_i3.Box<_i4.HiveCachedObject>>(
      () => appModule.getHiveBox(),
      preResolve: true,
    );
    gh.lazySingleton<_i5.CacheService>(
        () => _i6.HiveCacheService(gh<_i7.Box<_i4.HiveCachedObject>>()));
    gh.lazySingleton<_i8.Dio>(() => appModule.dio);
    return this;
  }
}

class _$AppModule extends _i9.AppModule {}
