import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sanber_app_flutter/Tugas/Tugas14/controller/app_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(AppController());
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Obx(() => controller.postLoading.value
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : ListView.builder(
                      itemCount: controller.getPosts.length,
                      itemBuilder: (context, index) {
                        var item = controller.getPosts[index];
                        return Card(
                          child: ListTile(
                            title: Text(item.title!),
                            subtitle: Text(item.body!),
                            leading: Text(item.id.toString()),
                          ),
                        );
                      })))
        ],
      ),
    );
  }
}
