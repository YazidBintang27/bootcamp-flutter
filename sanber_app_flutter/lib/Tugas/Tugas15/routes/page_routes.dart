import 'package:get/get.dart';
import 'package:sanber_app_flutter/Tugas/Tugas15/pages/page_1.dart';
import 'package:sanber_app_flutter/Tugas/Tugas15/pages/page_2.dart';
import 'package:sanber_app_flutter/Tugas/Tugas15/pages/page_3.dart';
import 'package:sanber_app_flutter/Tugas/Tugas15/routes/route_name.dart';

class PageRoutes {
  static final pages = [
    GetPage(name: RouteName.page_1, page: () => const Page1()),
    GetPage(name: RouteName.page_2, page: () => const Page2()),
    GetPage(name: RouteName.page_3, page: () => const Page3()),
  ];
}
