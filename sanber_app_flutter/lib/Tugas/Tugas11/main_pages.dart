import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sanber_app_flutter/Tugas/Tugas11/home_screen.dart';
import 'package:sanber_app_flutter/Tugas/Tugas11/account_screen.dart';
import 'package:sanber_app_flutter/Tugas/Tugas11/search_screen.dart';
import 'package:sanber_app_flutter/Tugas/Tugas11/drawer_screen.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;
  List<Widget> pages = [
    const HomeScreen(),
    const SearchScreen(),
    const AccountScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello, Yazid",
            style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade900)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Icon(
              Icons.notifications_none,
              color: Colors.grey.shade900,
              size: 28,
            ),
          )
        ],
      ),
      drawer: const DrawerScreen(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        selectedItemColor: Colors.blue.shade500,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account")
        ],
      ),
      body: pages[index],
    );
  }
}
