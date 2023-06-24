import 'package:alo_moves/features/training_series/data/models/training_series_class_model.dart';
import 'package:alo_moves/features/training_series/domain/entities/community_social_post.dart';
import 'package:alo_moves/features/training_series/domain/entities/training_series_class.dart';
import 'package:alo_moves/features/training_series/domain/entities/training_series_overview.dart';
import 'package:alo_moves/features/training_series/domain/repository/training_series_repository.dart';
import 'package:alo_moves/features/training_series/domain/services/training_series_service.dart';
import 'package:alo_moves/utils/cache/cache_service.dart';
import 'package:alo_moves/utils/constants.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: TrainingSeriesRepository)
class TrainingSeriesRepositoryImpl implements TrainingSeriesRepository {
  final TrainingSeriesService _trainingSeriesService;
  final CacheService _cacheService;

  const TrainingSeriesRepositoryImpl(
    this._trainingSeriesService,
    this._cacheService,
  );

  @override
  Future<TrainingSeriesOverview> getOverview() async {
    throw UnimplementedError();
  }

  @override
  Future<List<TrainingSeriesClass>> getClasses() async {
    late final List classesModels;
    final cachedObject =
        await _cacheService.get(CacheConstants.trainingSeriesClassesKey);

    if (cachedObject == null || cachedObject.isExpired()) {
      classesModels = await _trainingSeriesService.getClasses();
      await _cacheService.put(
        CacheConstants.trainingSeriesClassesKey,
        classesModels,
      );
    } else {
      classesModels = cachedObject.value as List;
    }

    final classes = classesModels.map((classModel) {
      classModel as TrainingSeriesClassModel;
      return classModel;
    }).toList();

    return classes;
  }

  @override
  Future<List<CommunitySocialPost>> getCommunitySocialPosts() async {
    throw UnimplementedError();
  }
}
