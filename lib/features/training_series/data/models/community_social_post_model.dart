import 'package:alo_moves/features/training_series/domain/entities/community_social_post.dart';

class CommunitySocialPostModel extends CommunitySocialPost {
  const CommunitySocialPostModel({
    required super.authorName,
    required super.authorImageUrl,
    required super.publishDatetime,
    required super.postedOnVideoTitle,
    required super.postedOnVideoTimestamp,
    required super.content,
    required super.numOfLikes,
  });

  CommunitySocialPostModel.fromJson(Map<String, dynamic> json)
      : this(
          authorName: json['authorName'] as String,
          authorImageUrl: json['authorImageUrl'] as String,
          publishDatetime: DateTime.parse(json['publishDatetime'] as String),
          postedOnVideoTitle: json['postedOnVideoTitle'] as String,
          postedOnVideoTimestamp: json['postedOnVideoTimestamp'] as String,
          content: json['content'] as String,
          numOfLikes: json['numOfLikes'] as int,
        );
}
