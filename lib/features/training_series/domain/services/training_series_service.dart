import 'package:alo_moves/features/training_series/data/models/community_social_post_model.dart';
import 'package:alo_moves/features/training_series/data/models/training_series_class_model.dart';
import 'package:alo_moves/features/training_series/data/models/training_series_overview_model.dart';

abstract class TrainingSeriesService {
  Future<TrainingSeriesOverviewModel> getOverview();

  Future<List<TrainingSeriesClassModel>> getClasses();

  Future<List<CommunitySocialPostModel>> getCommunitySocialPosts();
}
