import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sanber_app_flutter/Tugas/Tugas15/routes/route_name.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Page 2"),
            ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text("Go Back to Page 1")),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed(RouteName.page_3);
                },
                child: const Text("Go To Page 3"))
          ],
        ),
      ),
    );
  }
}
