import 'package:flutter/material.dart';
import 'package:twitter/src/component/appbar/comp_appbar.dart';
import 'package:twitter/src/component/comp_navbar.dart';
import 'package:twitter/src/component/comp_search_bar.dart';
import 'package:twitter/src/component/comp_side_drawer.dart';
import 'package:twitter/src/ui/message_screen.dart';
import 'package:twitter/src/ui/search_screen.dart';
import 'package:twitter/src/ui/tweetsScreen.dart';
import 'package:twitter/src/ui/twitter_lists.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   
   int selectedScreen=0;
    void ChangeScreen(int   index){
      setState((){
        selectedScreen =  index;
        showScreen(selectedScreen); 
        selectAppBar(selectedScreen); 

        });
    }
  Widget? showScreen(int selectedScreen)
  {
    if(selectedScreen==0)
        return TweetsScreen();
    else if(selectedScreen==1)
          return SearchScreen();
  //else if(selectedScreen==2)
      //return twitterLists();
    else if(selectedScreen==3)
      return MsgScreen();

  }
  AppBar? selectAppBar(int selectAppBar){
    if(selectedScreen==0)
        return CompTweetAppBar();
    else if(selectedScreen==1)
        return CompSearchAppBar();
    else if(selectedScreen==2)
      return CompNotifAppBar() ;
    else if(selectedScreen==3)
      return CompMesgAppBar();
  }
  
  
   @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar:selectAppBar(selectedScreen) ,
     body: showScreen(selectedScreen),
      drawer: const CompDrawer(),
     bottomNavigationBar: NavigationBar(
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
    ),
    );
  }
}

