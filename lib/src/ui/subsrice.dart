import 'package:flutter/material.dart';

class CompSubscrib extends StatefulWidget {
  const CompSubscrib({super.key});

  @override
  State<CompSubscrib> createState() => _CompSubscribState();
}

class _CompSubscribState extends State<CompSubscrib> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.all(55),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [ Text("You haven't created or subscribed to any Lists", 
        style:TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,
         )),
         Text("When you do,it'll show up here."),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: Colors.blue, // Background color
              onPrimary: Colors.white, // Text Color (Foreground color)
            ),
            child: const Text(
              'Create List',
            ),
          )
        ],
        
      ),
    )
   ;
  }
}