import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sanber_app_flutter/Tugas/Tugas13/config/firebase_options.dart';
import 'package:sanber_app_flutter/Tugas/Tugas14/ui/home_page.dart';

void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
// );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        textTheme: GoogleFonts.poppinsTextTheme()
            .copyWith(displayMedium: TextStyle(color: Colors.grey.shade800)),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
