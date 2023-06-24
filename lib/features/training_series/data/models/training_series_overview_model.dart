import 'package:alo_moves/features/training_series/domain/entities/training_series_overview.dart';

class TrainingSeriesOverviewModel extends TrainingSeriesOverview {
  const TrainingSeriesOverviewModel({
    required super.seriesName,
    required super.coachesNames,
    required super.coverImageUrl,
    required super.description,
    required super.videoUrl,
  });

  TrainingSeriesOverviewModel.fromJson(Map<String, dynamic> json)
      : this(
          seriesName: json['seriesName'] as String,
          coachesNames: json['coachesNames'] as List<String>,
          coverImageUrl: json['coverImageUrl'] as String,
          description: json['description'] as String,
          videoUrl: json['videoUrl'] as String,
        );
}
