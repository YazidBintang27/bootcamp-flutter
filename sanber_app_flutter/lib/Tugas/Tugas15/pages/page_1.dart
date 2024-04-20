import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sanber_app_flutter/Tugas/Tugas15/routes/route_name.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Page 1"),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed(RouteName.page_2);
                },
                child: const Text("Go To Page 2"))
          ],
        ),
      ),
    );
  }
}
