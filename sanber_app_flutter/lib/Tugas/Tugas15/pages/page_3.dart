import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sanber_app_flutter/Tugas/Tugas15/routes/route_name.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Page 3"),
            ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text("Go Back to Page 2")),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed(RouteName.page_1);
                },
                child: const Text("Go Back Page 1"))
          ],
        ),
      ),
    );
  }
}