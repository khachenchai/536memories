class CommentModel {
  late String id;
  late String comment;
  late String posterName;
  late DateTime createdAt;

  CommentModel({required this.id, required this.comment, required this.posterName, required this.createdAt});

  Map<String, dynamic> toJson() => {
    'id' : id,
    'comment' : comment,
    'posterName' : posterName,
    'createdAt' : createdAt.toIso8601String(),
  };

  CommentModel fromJson(Map<String, dynamic> json) => CommentModel(
    id: json['id'],
    comment: json['comment'],
    posterName: json['posterName'],
    createdAt: DateTime.parse(json['createdAt']),
  );
}