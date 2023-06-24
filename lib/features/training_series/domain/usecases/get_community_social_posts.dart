import 'package:alo_moves/features/training_series/domain/entities/community_social_post.dart';
import 'package:alo_moves/features/training_series/domain/repository/training_series_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetCommunitySocialPosts {
  final TrainingSeriesRepository _trainingSeriesRepository;

  const GetCommunitySocialPosts(this._trainingSeriesRepository);

  Future<List<CommunitySocialPost>> call() async =>
      _trainingSeriesRepository.getCommunitySocialPosts();
}
