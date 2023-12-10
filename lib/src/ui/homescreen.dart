import 'package:flutter/material.dart';
import 'package:twitter/src/component/comp_side_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 50,
          title:Row(
            children: [
              CircleAvatar(backgroundColor: Colors.amber),
               SizedBox(width: 20),
              Text('Lists', 
              style:TextStyle(
              fontWeight: FontWeight.bold,
         ),
         ),
            ],
          ),
    ),
    drawer : const CompDrawer(),
    body : ListView(
            children: [
              ListTile(
                leading: CircleAvatar(backgroundColor: Colors.black),
                title : Column(
                  children: [
                    Row(
                      children: [
                        Text('Oya Ozcan'),
                        Text('@oyaozcan'),
                      ],
                    ),
                    Text("Tweet"),
                    Row(
                      children: [
                        Text('25'),
                        Icon(Icons.messenger_outline_rounded),
                        SizedBox(width: 20),
                        Text('25'),
                        Icon(Icons.favorite_border),
                        SizedBox(width: 20),
                        Text('25'),
                        Icon(Icons.import_export_rounded),
                        SizedBox(width: 20),
                        Icon(Icons.unarchive_outlined),
                      ],
                    ),
                  ],
                ),
        )
      ],
    ),  
    );
  }
}