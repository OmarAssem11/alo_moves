import 'package:injectable/injectable.dart';
import 'package:alo_moves/features/training_series/domain/services/training_series_service.dart';

@LazySingleton(as: TrainingSeriesService)
class TrainingSeriesHTTPService implements TrainingSeriesService {}
