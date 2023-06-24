import 'package:alo_moves/features/training_series/domain/entities/community_social_post.dart';
import 'package:alo_moves/features/training_series/domain/entities/training_series_class.dart';
import 'package:alo_moves/features/training_series/domain/entities/training_series_overview.dart';

abstract class TrainingSeriesState {}

class TrainingSeriesInitial extends TrainingSeriesState {}

class TrainingSeriesLoading extends TrainingSeriesState {}

class TrainingSeriesError extends TrainingSeriesState {
  final String message;

  TrainingSeriesError(this.message);
}

class GetTrainingSeriesOverviewSuccess extends TrainingSeriesState {
  final TrainingSeriesOverview overview;

  GetTrainingSeriesOverviewSuccess(this.overview);
}

class GetTrainingSeriesClassesSuccess extends TrainingSeriesState {
  final List<TrainingSeriesClass> classes;

  GetTrainingSeriesClassesSuccess(this.classes);
}

class GetCommunitySocialPostsSuccess extends TrainingSeriesState {
  final List<CommunitySocialPost> classes;

  GetCommunitySocialPostsSuccess(this.classes);
}
