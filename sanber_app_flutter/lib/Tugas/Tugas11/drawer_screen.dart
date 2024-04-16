import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
        child: ListView(
      children: [
        const UserAccountsDrawerHeader(
          accountName: Text("Yazid Bintang"),
          accountEmail: Text("yazidbintang2711@gmail.com"),
          currentAccountPicture: CircleAvatar(
            backgroundImage: AssetImage("assets/images/photo.png"),
          ),
        ),
        DrawerListTile(
          iconData: Icons.person,
          title: "Account",
          onPressed: () {},
        ),
        DrawerListTile(
          iconData: Icons.bookmark,
          title: "Watch List",
          onPressed: () {},
        ),
        DrawerListTile(
          iconData: Icons.settings,
          title: "Settings",
          onPressed: () {},
        )
      ],
    ));
  }
}

class DrawerListTile extends StatelessWidget {
  final IconData? iconData;
  final String? title;
  final Function? onPressed;

  const DrawerListTile({super.key, this.iconData, this.title, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("$title"),
      leading: Icon(iconData),
      onTap: () {
        onPressed;
      },
    );
  }
}
