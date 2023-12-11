import 'package:flutter/material.dart';
import 'package:twitter/src/ui/homescreen.dart';
import 'package:twitter/src/ui/search_screen.dart';
import 'package:twitter/src/ui/tweetsScreen.dart';
import 'package:twitter/src/ui/twitter_lists.dart';

class CompNavBar extends StatefulWidget {
  const CompNavBar({super.key});

  @override
  State<CompNavBar> createState() => CompNavBarState();
}

class CompNavBarState extends State<CompNavBar> {
  @override

   int selectedScreen=0;
    void ChangeScreen(int   index){
      setState((){
        selectedScreen =  index;
        showScreen(selectedScreen); 
        });
    }
  Widget? showScreen(int selectedScreen)
  {
    if(selectedScreen==0)
        return TweetsScreen();
    else if(selectedScreen==1)
          return SearchScreen();
    else if(selectedScreen==2)
      return twitterLists();
    else if(selectedScreen==3)
      return HomeScreen();
  }

  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: selectedScreen,
      onDestinationSelected: ChangeScreen,
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

