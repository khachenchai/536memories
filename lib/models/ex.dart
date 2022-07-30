class Ex {
  final String? name;
  final String? comment;

  Ex({required this.name, required this.comment});

  factory Ex.fromJson(Map<String, dynamic> json) => Ex(
    name: json['name'],
    comment: json['comment'],
  );

  Map<String, dynamic> toJson() => {
    'name': name,
    'comment': comment,
  };
}