import 'package:alo_moves/features/training_series/domain/entities/training_series_class.dart';

class TrainingSeriesClassModel extends TrainingSeriesClass {
  const TrainingSeriesClassModel({
    required super.id,
    required super.title,
    required super.description,
    required super.videoUrl,
    required super.duration,
  });

  TrainingSeriesClassModel.fromJson(Map<String, dynamic> json)
      : this(
          id: json['id'] as String,
          title: json['title'] as String,
          description: json['description'] as String,
          videoUrl: json['videoUrl'] as String,
          duration: json['duration'] as String,
        );
}
