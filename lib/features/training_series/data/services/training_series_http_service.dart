import 'package:alo_moves/features/training_series/data/models/community_social_post_model.dart';
import 'package:alo_moves/features/training_series/data/models/training_series_class_model.dart';
import 'package:alo_moves/features/training_series/data/models/training_series_overview_model.dart';
import 'package:alo_moves/features/training_series/domain/services/training_series_service.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: TrainingSeriesService)
class TrainingSeriesHTTPService implements TrainingSeriesService {
  final Dio _dio;

  const TrainingSeriesHTTPService(this._dio);

  @override
  Future<TrainingSeriesOverviewModel> getOverview() async {
    throw UnimplementedError();
  }

  @override
  Future<List<TrainingSeriesClassModel>> getClasses() async {
    throw UnimplementedError();
  }

  @override
  Future<List<CommunitySocialPostModel>> getCommunitySocialPosts() async {
    throw UnimplementedError();
  }
}
