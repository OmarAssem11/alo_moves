import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:alo_moves/features/training_series/presentation/cubit/training_series_state.dart';

@injectable
class TrainingSeriesCubit extends Cubit<TrainingSeriesState> {
  TrainingSeriesCubit() : super(TrainingSeriesInitial());
}
