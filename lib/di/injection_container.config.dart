// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:alo_moves/di/app_module.dart' as _i17;
import 'package:alo_moves/features/training_series/data/repository/training_series_repository_impl.dart'
    as _i12;
import 'package:alo_moves/features/training_series/data/services/training_series_http_service.dart'
    as _i10;
import 'package:alo_moves/features/training_series/domain/repository/training_series_repository.dart'
    as _i11;
import 'package:alo_moves/features/training_series/domain/services/training_series_service.dart'
    as _i9;
import 'package:alo_moves/features/training_series/domain/usecases/get_community_social_posts.dart'
    as _i13;
import 'package:alo_moves/features/training_series/domain/usecases/get_training_series_classes.dart'
    as _i14;
import 'package:alo_moves/features/training_series/domain/usecases/get_training_series_overview.dart'
    as _i15;
import 'package:alo_moves/features/training_series/presentation/cubit/training_series_cubit.dart'
    as _i16;
import 'package:alo_moves/utils/cache/cache_service.dart' as _i5;
import 'package:alo_moves/utils/cache/hive_cache/hive_cache_service.dart'
    as _i6;
import 'package:alo_moves/utils/cache/hive_cache/hive_cached_object.dart'
    as _i4;
import 'package:dio/dio.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive/hive.dart' as _i7;
import 'package:hive_flutter/hive_flutter.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;

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
    gh.lazySingleton<_i9.TrainingSeriesService>(
        () => _i10.TrainingSeriesHTTPService(gh<_i8.Dio>()));
    gh.lazySingleton<_i11.TrainingSeriesRepository>(
        () => _i12.TrainingSeriesRepositoryImpl(
              gh<_i9.TrainingSeriesService>(),
              gh<_i5.CacheService>(),
            ));
    gh.lazySingleton<_i13.GetCommunitySocialPosts>(() =>
        _i13.GetCommunitySocialPosts(gh<_i11.TrainingSeriesRepository>()));
    gh.lazySingleton<_i14.GetTrainingSeriesClasses>(() =>
        _i14.GetTrainingSeriesClasses(gh<_i11.TrainingSeriesRepository>()));
    gh.lazySingleton<_i15.GetTrainingSeriesOverview>(() =>
        _i15.GetTrainingSeriesOverview(gh<_i11.TrainingSeriesRepository>()));
    gh.factory<_i16.TrainingSeriesCubit>(() => _i16.TrainingSeriesCubit(
          gh<_i15.GetTrainingSeriesOverview>(),
          gh<_i14.GetTrainingSeriesClasses>(),
          gh<_i13.GetCommunitySocialPosts>(),
        ));
    return this;
  }
}

class _$AppModule extends _i17.AppModule {}
