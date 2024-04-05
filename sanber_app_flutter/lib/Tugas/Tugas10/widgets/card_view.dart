import 'package:flutter/material.dart';
import 'package:sanber_app_flutter/Tugas/Tugas10/data_images.dart';

class CardView {
  static List<Widget> imagesSliders =
      DataImages.imagesList.map((item) => ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(item, fit: BoxFit.cover, width: double.infinity,),
      )).toList();
}
