import 'package:flutter/material.dart';
import 'package:twitter/src/ui/homescreen.dart';
import 'package:twitter/src/ui/message_screen.dart';
import 'package:twitter/src/ui/search_screen.dart';
import 'package:twitter/src/ui/settings_screen.dart';
import 'package:twitter/src/ui/twitter_lists.dart';

void main() {
  runApp(const MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        navigationBarTheme:
            NavigationBarThemeData(backgroundColor: Colors.white),
        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: SearchScreen(),
      home: const HomeScreen(),
      //home: SettingScreen(),
      //home: twitterLists(),
      //home :MsgScreen(),

    );
  }
}