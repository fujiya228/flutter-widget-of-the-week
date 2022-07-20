import 'package:flutter/material.dart';
import '../back_page_button.dart';

class Page046 extends StatefulWidget {
  const Page046({
    Key? key,
  }) : super(key: key);

  @override
  State<Page046> createState() => _Page046State();
}

class _Page046State extends State<Page046> {
  int currentIndex = 0;
  List<StatelessWidget> pageWidgetList = [
    Container(
      color: Colors.amber,
      child: const Center(
        child: Text('1'),
      ),
    ),
    Container(
      color: Colors.blue,
      child: const Center(
        child: Text('2'),
      ),
    ),
    Container(
      color: Colors.lime,
      child: const Center(
        child: Text('3'),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: IndexedStack(
          children: pageWidgetList,
          index: currentIndex,
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) => {
            setState(
              () => currentIndex = index,
            )
          },
          currentIndex: currentIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: '1',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: '2',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: '3',
            ),
          ],
        ),
        floatingActionButton: const BackPageButton(),
      ),
    );
  }
}
