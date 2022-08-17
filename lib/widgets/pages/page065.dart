import 'package:flutter/material.dart';
import '../back_page_button.dart';

class Page065 extends StatelessWidget {
  const Page065({
    Key? key,
  }) : super(key: key);

  final List<Tab> myTabs = const <Tab>[
    Tab(text: 'LEFT'),
    Tab(text: 'RIGHT'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: DefaultTabController(
          length: myTabs.length,
          child: Scaffold(
            appBar: AppBar(
              bottom: TabBar(
                tabs: myTabs,
              ),
            ),
            body: TabBarView(
              children: myTabs.map((Tab tab) {
                final String? label = tab.text?.toLowerCase();
                return Center(
                  child: Text(
                    'This is the $label tab',
                    style: const TextStyle(fontSize: 36),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
        floatingActionButton: const BackPageButton(),
      ),
    );
  }
}
