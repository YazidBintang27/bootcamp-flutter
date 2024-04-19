import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sanber_app_flutter/Tugas/Tugas14/model/response_model.dart';
import 'package:sanber_app_flutter/Tugas/Tugas14/service/api_service.dart';

class AppController extends GetxController {
  var getPosts = <PostModel>[].obs;
  PostService postService = PostService();
  var postLoading = true.obs;

  @override
  void onInit() {
    callPostMethod();
    super.onInit();
  }

  void callPostMethod() async {
    try {
      postLoading.value = true;
      var result = await postService.getAllPosts();
      if (result != null) {
        getPosts.assignAll(result);
      } else {
        debugPrint(null);
      }
    } finally {
      postLoading.value = false;
    }
    update();
  }
}
