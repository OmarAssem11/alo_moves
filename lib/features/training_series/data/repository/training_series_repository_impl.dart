import 'package:alo_moves/features/training_series/domain/entities/community_social_post.dart';
import 'package:alo_moves/features/training_series/domain/entities/training_series_class.dart';
import 'package:alo_moves/features/training_series/domain/entities/training_series_overview.dart';
import 'package:alo_moves/features/training_series/domain/repository/training_series_repository.dart';
import 'package:alo_moves/features/training_series/domain/services/training_series_service.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: TrainingSeriesRepository)
class TrainingSeriesRepositoryImpl implements TrainingSeriesRepository {
  final TrainingSeriesService _trainingSeriesService;

  const TrainingSeriesRepositoryImpl(this._trainingSeriesService);

  @override
  Future<TrainingSeriesOverview> getOverview() async {
    throw UnimplementedError();
  }

  @override
  Future<List<TrainingSeriesClass>> getClasses() async {
    throw UnimplementedError();
  }

  @override
  Future<List<CommunitySocialPost>> getCommunitySocialPosts() async {
    throw UnimplementedError();
  }
}
