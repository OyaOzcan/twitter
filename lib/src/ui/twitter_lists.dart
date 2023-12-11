import 'package:flutter/material.dart';
import 'package:twitter/src/component/comp_floating_action_button.dart';
import 'package:twitter/src/component/comp_mem_list_item.dart';
import 'package:twitter/src/component/comp_navbar.dart';
import 'package:twitter/src/ui/subsrice.dart';

class twitterLists extends StatefulWidget {
  const twitterLists({super.key});

  @override
  State<twitterLists> createState() => _twitterListsState();
}

class _twitterListsState extends State<twitterLists> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
        length: 2,  
        child:
        Center(
            child :const TabBarView(
              children: <Widget>[
                Center(
                  child: CompSubscrib(),
              ),
              Center(
              child: CompMemListItem(),
            ),
          ],
          ),
        ),
        );
  }
}