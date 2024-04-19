import 'dart:async';
import 'package:dio/dio.dart';
import 'package:sanber_app_flutter/Tugas/Tugas14/model/response_model.dart';

class PostService {
  Dio dio = Dio();
  static const url = "https://jsonplaceholder.typicode.com/posts";

  Future<List<PostModel>> getAllPosts() async {
    try {
      final response = await dio
          .get(url, options: Options(headers: {'Accept': 'application/json'}))
          .timeout(const Duration(seconds: 10), onTimeout: () {
        throw TimeoutException("Connection time out");
      });
      if (response.statusCode == 200 || response.statusCode == 201) {
        final data = response.data;
        List<PostModel> posts =
            List<PostModel>.from(data.map((e) => PostModel.fromJson(e)));
        return posts;
      }
      throw Exception();
    } catch (e) {
      rethrow;
    }
  }
}
