class CommunitySocialPost {
  final String authorName;
  final String authorImageUrl;
  final DateTime publishDatetime;
  final String postedOnVideoTitle;
  final String postedOnVideoTimestamp;
  final String content;
  final int numOfLikes;

  const CommunitySocialPost({
    required this.authorName,
    required this.authorImageUrl,
    required this.publishDatetime,
    required this.postedOnVideoTitle,
    required this.postedOnVideoTimestamp,
    required this.content,
    required this.numOfLikes,
  });
}
