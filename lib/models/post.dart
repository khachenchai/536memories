class PostModel {
  late final String id;
  late String? status;
  late List<dynamic>? images;
  late bool isPostOwner = false;

  PostModel({required this.id, this.status, this.images, required this.isPostOwner});

  Map<String, dynamic> toJson() => {
    'id' : id,
    'status' : status,
    'images' : images,
    'isPostOwner' : isPostOwner
  };

  PostModel fromJson(Map<String, dynamic> json) => PostModel(
    id: json['id'],
    status: json['status'],
    images: json['images'],
    isPostOwner: json['isPostOwner']
  );
}