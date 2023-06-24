import 'package:alo_moves/features/training_series/domain/usecases/get_community_social_posts.dart';
import 'package:alo_moves/features/training_series/domain/usecases/get_training_series_classes.dart';
import 'package:alo_moves/features/training_series/domain/usecases/get_training_series_overview.dart';
import 'package:alo_moves/features/training_series/presentation/cubit/training_series_state.dart';
import 'package:alo_moves/utils/exception/app_exception.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class TrainingSeriesCubit extends Cubit<TrainingSeriesState> {
  final GetTrainingSeriesOverview _getTrainingSeriesOverview;
  final GetTrainingSeriesClasses _getTrainingSeriesClasses;
  final GetCommunitySocialPosts _getCommunitySocialPosts;

  TrainingSeriesCubit(
    this._getTrainingSeriesOverview,
    this._getTrainingSeriesClasses,
    this._getCommunitySocialPosts,
  ) : super(TrainingSeriesInitial());

  Future<void> getOverview() async {
    emit(TrainingSeriesLoading());
    try {
      final overview = await _getTrainingSeriesOverview();
      emit(GetTrainingSeriesOverviewSuccess(overview));
    } on AppException catch (exception) {
      emit(TrainingSeriesError(exception.message));
    }
  }

  Future<void> getClasses() async {
    emit(TrainingSeriesLoading());
    try {
      final classes = await _getTrainingSeriesClasses();
      emit(GetTrainingSeriesClassesSuccess(classes));
    } on AppException catch (exception) {
      emit(TrainingSeriesError(exception.message));
    }
  }

  Future<void> getPosts() async {
    emit(TrainingSeriesLoading());
    try {
      final posts = await _getCommunitySocialPosts();
      emit(GetCommunitySocialPostsSuccess(posts));
    } on AppException catch (exception) {
      emit(TrainingSeriesError(exception.message));
    }
  }
}
