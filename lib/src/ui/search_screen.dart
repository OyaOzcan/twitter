import 'package:flutter/material.dart';
import 'package:twitter/src/component/comp_navbar.dart';
import 'package:twitter/src/component/comp_search_bar.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(55),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [ Text("No new trends for you.", 
        style:TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,
         )),
         Text("It seems like there's not a lot to show you right now,but you can see trends other areas."),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: Colors.blue, // Background color
              onPrimary: Colors.white, // Text Color (Foreground color)
            ),
            child: const Text(
              'Change Location',
            ),
          )
        ],  
      ),
    );
  }
}