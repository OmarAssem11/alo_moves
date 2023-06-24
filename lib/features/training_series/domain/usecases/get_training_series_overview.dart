import 'package:alo_moves/features/training_series/domain/entities/training_series_overview.dart';
import 'package:alo_moves/features/training_series/domain/repository/training_series_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetTrainingSeriesOverview {
  final TrainingSeriesRepository _trainingSeriesRepository;

  const GetTrainingSeriesOverview(this._trainingSeriesRepository);

  Future<TrainingSeriesOverview> call() async =>
      _trainingSeriesRepository.getOverview();
}
