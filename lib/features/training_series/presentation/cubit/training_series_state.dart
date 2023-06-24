abstract class TrainingSeriesState {}

class TrainingSeriesInitial extends TrainingSeriesState {}

class TrainingSeriesLoading extends TrainingSeriesState {}

class TrainingSeriesError extends TrainingSeriesState {
  final String message;

  TrainingSeriesError(this.message);
}
