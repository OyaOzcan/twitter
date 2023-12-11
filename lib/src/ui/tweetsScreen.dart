import 'package:flutter/material.dart';
import 'package:twitter/src/component/comp_navbar.dart';
import 'package:twitter/src/component/comp_side_drawer.dart';

class TweetsScreen extends StatefulWidget {
  const TweetsScreen({super.key});

  @override
  State<TweetsScreen> createState() => _TweetsScreenState();
}

class _TweetsScreenState extends State<TweetsScreen> {
  @override
  Widget build(BuildContext context) {
    return
     ListView(
            children: [
              ListTile(
                leading: CircleAvatar(backgroundColor: Colors.black),
                title : Column(
                  children: [
                    Row(
                      children: [
                        Text('Oya Ozcan', 
                        style:TextStyle(fontWeight: FontWeight.bold)),
                        Text('@oyaozcan'),
                      ],
                    ),
                    Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Text('25'),
                        Icon(Icons.messenger_outline_rounded),
                        SizedBox(width: 40),
                        Text('25'),
                        Icon(Icons.favorite_border),
                        SizedBox(width:40),
                        Text('25'),
                        Icon(Icons.import_export_rounded),
                        SizedBox(width: 40),
                        Icon(Icons.unarchive_outlined),
                      ],
                    ),
                  ],
                ),
        )
      ],
         );        
  }
}
