class PostModel {
  int? userId;
  int? id;
  String? title;
  String? body;

  PostModel({this.userId, this.id, this.title, this.body});

  factory PostModel.fromJson(dynamic json) => PostModel(
    userId: json['userId'],
    id: json['id'],
    title: json['title'],
    body: json['body']
  );
}
