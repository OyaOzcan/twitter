import 'package:flutter/material.dart';
import 'package:twitter/src/component/comp_navbar.dart';
import 'package:twitter/src/component/comp_search_bar.dart';

class MsgScreen extends StatefulWidget {
  const MsgScreen({super.key});

  @override
  State<MsgScreen> createState() => _MsgScreenState();
}

class _MsgScreenState extends State<MsgScreen> {
  @override
  Widget build(BuildContext context) {
    return  CompSearchBar();
    //BODY DE SADECE SEARCH BAR VAR
  }
}