import 'package:alo_moves/features/training_series/domain/entities/community_social_post.dart';
import 'package:alo_moves/features/training_series/domain/entities/training_series_class.dart';
import 'package:alo_moves/features/training_series/domain/entities/training_series_overview.dart';

abstract class TrainingSeriesRepository {
  Future<TrainingSeriesOverview> getOverview();

  Future<List<TrainingSeriesClass>> getClasses();

  Future<List<CommunitySocialPost>> getCommunitySocialPosts();
}
