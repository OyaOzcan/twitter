import 'package:flutter/material.dart';

class CompNavBar extends StatefulWidget {
  const CompNavBar({super.key});

  @override
  State<CompNavBar> createState() => CompNavBarState();
}

class CompNavBarState extends State<CompNavBar> {
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      destinations: const <Widget>[
        NavigationDestination(
          label: 'Home',
          icon: Icon(Icons.home_outlined),
        ),
        NavigationDestination(
          label: 'Search',
          icon: Icon(Icons.search),
        ),
        NavigationDestination(
          label: 'Notificaitons',
          icon: Icon(Icons.notifications_sharp),
        ),
        NavigationDestination(
          label: 'Messages',
          icon: Icon(Icons.message),
        ),
      ],
      //indicatorColor: Colors.grey,
    );
  }
}
