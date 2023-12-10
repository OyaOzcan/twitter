import 'package:flutter/material.dart';

class CompDrawer extends StatefulWidget {
  const CompDrawer({super.key});

  @override
  State<CompDrawer> createState() => _CompDrawerState();
}

class _CompDrawerState extends State<CompDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 32,
                    child: CircleAvatar(
                    backgroundImage: AssetImage("assets/foto.jpeg"),
                    radius: 30),
                  ),
                  Text(
                    'Oya Özcan',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    '@oyaozcan',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
                leading: Icon(Icons.person_2_outlined ),
                title: Text('Profile'),
                onTap: () {
                  Navigator.pop(context);
                }),
            ListTile(
                leading: Icon(Icons.list_alt),
                title: Text('Lists'),
                onTap: () {
                  Navigator.pop(context);
                }),
              ListTile(
                leading: Icon(Icons.chat_outlined),
                title: Text('Topics'),
                onTap: () {
                  Navigator.pop(context);
                }),
              ListTile(
                leading: Icon(Icons.bookmark_border),
                title: Text('Bookmarks'),
                onTap: () {
                  Navigator.pop(context);
                }),
              ListTile(
                leading: Icon(Icons.flash_off_outlined),
                title: Text('Moments'),
                onTap: () {
                  Navigator.pop(context);
                }),
               ListTile(
                leading:  Text('Settings and Privacy'),
                onTap: () {
                  Navigator.pop(context);
                }),
                ListTile(
                leading:  Text('Help Center'),
                onTap: () {
                  Navigator.pop(context);
                }),
          ],
        ),
      );
  }
}
  //altına ampül ve qr kod ekle
  