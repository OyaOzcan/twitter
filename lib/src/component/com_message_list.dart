import 'package:flutter/material.dart';

class CompMsgList extends StatefulWidget {
  const CompMsgList({super.key});

  @override
  State<CompMsgList> createState() => _CompMsgListState();
}

class _CompMsgListState extends State<CompMsgList> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child:  Row(
        children: [
          CircleAvatar(backgroundColor: Colors.black),
          SizedBox(width: 15),
          Text('asdfgb'),
        ],
      ),           
    );
  }
}