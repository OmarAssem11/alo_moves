import 'package:alo_moves/features/training_series/domain/entities/training_series_class.dart';
import 'package:alo_moves/features/training_series/domain/repository/training_series_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetTrainingSeriesClasses {
  final TrainingSeriesRepository _trainingSeriesRepository;

  const GetTrainingSeriesClasses(this._trainingSeriesRepository);

  Future<List<TrainingSeriesClass>> call() async =>
      _trainingSeriesRepository.getClasses();
}
