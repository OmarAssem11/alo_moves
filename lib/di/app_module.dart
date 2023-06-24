import 'package:dio/dio.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:alo_moves/utils/cache/hive_cache/hive_cached_object.dart';
import 'package:alo_moves/utils/constants.dart';

@module
abstract class AppModule {
  @lazySingleton
  Dio get dio {
    final dio = Dio();
    dio.options = BaseOptions(
      receiveDataWhenStatusError: true,
    );
    return dio;
  }

  @preResolve
  @lazySingleton
  Future<Box<HiveCachedObject>> getHiveBox() async {
    await Hive.initFlutter();
    final box = await Hive.openBox<HiveCachedObject>(CacheConstants.boxName);
    return box;
  }
}
