import 'package:flutter/material.dart';
import 'package:twitter/src/component/com_message_list.dart';

class CompSearchBar extends StatefulWidget {
  const CompSearchBar({super.key});

  @override
  State<CompSearchBar> createState() => _CompSearchBarState();
}

class _CompSearchBarState extends State<CompSearchBar> {
  @override
  Widget build(BuildContext context) {
    return SearchAnchor(
              builder: (BuildContext context, SearchController controller) {
            return Padding(
              padding: const EdgeInsets.only(right: 30, left: 30),
              child: SearchBar(
                controller: controller,
                padding: const MaterialStatePropertyAll<EdgeInsets>(
                    EdgeInsets.symmetric(horizontal: 16.0)),
                onTap: () {
                  controller.openView();
                },
                onChanged: (_) {
                  controller.openView();
                },
                leading: const Icon(Icons.search),
              ),
            );
          }, suggestionsBuilder:
                  (BuildContext context, SearchController controller) {
            return List<ListTile>.generate(5, (int index) {
              final Widget item = CompMsgList();
              return ListTile(
                title:item,
                onTap: () {
                  setState(() {
                    //controller.closeView(item);
                  });
                },
              );
            });
          },
          );
  }
}