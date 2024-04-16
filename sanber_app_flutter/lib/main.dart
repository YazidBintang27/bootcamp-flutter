import 'package:flutter/material.dart';
import 'package:sanber_app_flutter/Tugas/Tugas11/login_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        textTheme: GoogleFonts.poppinsTextTheme().copyWith(displayMedium: TextStyle(color: Colors.grey.shade800)),
        useMaterial3: true,
      ),
      home: const LoginScreen(),
    );
  }
}