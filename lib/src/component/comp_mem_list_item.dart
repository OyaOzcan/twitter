import 'package:flutter/material.dart';

class CompMemListItem extends StatefulWidget {
  const CompMemListItem({super.key});

  @override
  State<CompMemListItem> createState() => _CompMemListItemState();
}

class _CompMemListItemState extends State<CompMemListItem> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: Column(
            children: [
              Text('asdfgbh'),
              Text('asdfgh'),
              Text('asdfg'),
            ],
          ),
        
          trailing: CircleAvatar(),

          // CircleAvatar(backgroundColor: Colors.yellow,);
        )
      ],
    );
  }
}
