import 'package:flutter/material.dart';
import 'package:twitter/src/component/comp_switch_button.dart';


class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading:const Icon(Icons.chevron_left),
          title:  Text('Message Settings', 
          style:TextStyle(
          fontWeight: FontWeight.bold,
         ),
         ),
        ),
          body: Center(
            child :ListView(
            children: [
              ListTile(
                leading: Column(
                  children: [
                    Text('Receive messages from anyone',
                    style:TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text("You will be able to receive Direct Message request from anyone on Twitter, even if you don't follow them"),
                    Text('Learn More',
                    style: TextStyle(color: Colors.blue),
                    ),
                  ],
          ),
          title : CompSwitch(),
        ),
           ListTile(
                leading: Column(
                  children: [
                    Text('Show Read Recipts', 
                     style:TextStyle(fontWeight: FontWeight.bold),
                     ),
                    Text("You will be able to receive Direct Message request from anyone on Twitter, even if you don't follow them"),
                    Text('Learn More',
                    style: TextStyle(color: Colors.blue),
                    ),
                  ],
          ),
          title : CompSwitch(),
        ),
           ListTile(
                leading: Column(
                  children: [
                    Text('Receive messages from anyone',
                     style:TextStyle(fontWeight: FontWeight.bold),
                     ),
                    Text("You will be able to receive Direct Message request from anyone on Twitter, even if you don't follow them"),
                    Text('Learn More',
                    style: TextStyle(color: Colors.blue),),
                  ],
          ),
          title : CompSwitch(),
        )
      ],
    ),  
        ),
     );
  }
}