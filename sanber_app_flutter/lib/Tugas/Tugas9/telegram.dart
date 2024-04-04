import 'package:flutter/material.dart';
import 'package:sanber_app_flutter/Tugas/Tugas9/chat_model.dart';
import 'package:sanber_app_flutter/Tugas/Tugas9/drawer_screen.dart';

class TelegramApp extends StatefulWidget {
  const TelegramApp({super.key});

  @override
  State<TelegramApp> createState() => _TelegramAppState();
}

class _TelegramAppState extends State<TelegramApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Telegram",
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: Icon(Icons.search),
          ),
        ],
      ),
      drawer: const DrawerScreen(),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage("${items[index].profileUrl}"),
                radius: 28,
              ),
              title: Text(
                "${items[index].name}",
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text("${items[index].message}"),
              trailing: Text("${items[index].time}"),
            );
          },
          separatorBuilder: (context, index) {
            return const Divider();
          },
          itemCount: items.length),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blueGrey,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        child: const Icon(
          Icons.camera_alt,
          color: Colors.white,
        ),
      ),
    );
  }
}
