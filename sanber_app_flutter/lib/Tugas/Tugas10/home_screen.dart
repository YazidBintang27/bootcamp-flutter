import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sanber_app_flutter/Tugas/Tugas10/widgets/card_view.dart';
import 'package:sanber_app_flutter/Tugas/Tugas10/widgets/form_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.blue.shade500,), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person, color: Colors.grey.shade900,), label: "Profile")
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 60,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello, Yazid!",
                      style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.grey.shade900),
                    ),
                    const SizedBox(height: 4,),
                    Text(
                      "Best movies waiting for you!",
                      style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.grey.shade700),
                    ),
                  ],
                ),
                Icon(Icons.notifications_none_outlined, color: Colors.grey.shade900, size: 28,)
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: FormWidget(
              label: "Search",
              icon: Icons.search,
            ),
          ),
          const SizedBox(height: 32,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20
            ),
            child: Text(
              "Recommended",
              style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey.shade900),
            ),
          ),
          const SizedBox(height: 12,),
          CarouselSlider(
            items: CardView.imagesSliders, 
            options: CarouselOptions(
              height: 450,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
              autoPlay: true
            )
          ),
        ],
      ),
    );
  }
}