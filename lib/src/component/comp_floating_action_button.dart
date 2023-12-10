import 'package:flutter/material.dart';

class CompFloatActBut extends StatefulWidget {
  const CompFloatActBut({super.key});

  @override
  State<CompFloatActBut> createState() => _CompFloatActButState();
}

class _CompFloatActButState extends State<CompFloatActBut> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        onPressed:(){},
        child: Icon(Icons.playlist_add),
        shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
        backgroundColor: Colors.blue,
        );
  }
}