import 'package:injectable/injectable.dart';
import 'package:alo_moves/features/training_series/domain/repository/training_series_repository.dart';

@LazySingleton(as: TrainingSeriesRepository)
class TrainingSeriesRepositoryImpl implements TrainingSeriesRepository {}
