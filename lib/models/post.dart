class PostModel {
  late final String id;
  late String? status;
  late List<dynamic>? images;
  late List<dynamic>? comments;
  late bool isPostOwner = false;
  late String ownerId;
  late DateTime createdAt;
  final int likeCount;

  PostModel({required this.id, this.status, this.images, required this.comments, required this.isPostOwner, required this.ownerId, required this.createdAt, required this.likeCount});

  Map<String, dynamic> toJson() => {
    'id' : id,
    'status' : status,
    'images' : images,
    'comments' : comments,
    'isPostOwner' : isPostOwner,
    'ownerId' : ownerId,
    'createdAt' : createdAt.toIso8601String(),
    'likeCount' : likeCount,
  };

  PostModel fromJson(Map<String, dynamic> json) => PostModel(
    id: json['id'],
    status: json['status'],
    images: json['images'],
    comments: json['comments'],
    isPostOwner: json['isPostOwner'],
    ownerId: json['ownerId'],
    createdAt: DateTime.parse(json['createdAt']),
    likeCount: json['likeCount'],
  );
}