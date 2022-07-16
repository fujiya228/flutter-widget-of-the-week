import 'package:flutter/material.dart';
import '../back_page_button.dart';

class Page042 extends StatefulWidget {
  const Page042({
    Key? key,
  }) : super(key: key);

  @override
  State<Page042> createState() => _Page042State();
}

class _Page042State extends State<Page042> {
  final List<int> _items = List<int>.generate(50, (int index) => index);

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color oddItemColor = colorScheme.primary.withOpacity(0.05);
    final Color evenItemColor = colorScheme.primary.withOpacity(0.15);

    return SafeArea(
      child: Scaffold(
        body: ReorderableListView(
          children: <Widget>[
            for (int index = 0; index < _items.length; index += 1)
              ListTile(
                key: Key('$index'),
                tileColor: _items[index].isOdd ? oddItemColor : evenItemColor,
                title: Text('Item ${_items[index]}'),
              ),
          ],
          onReorder: (int oldIndex, int newIndex) {
            setState(() {
              if (oldIndex < newIndex) {
                newIndex -= 1;
              }
              final int item = _items.removeAt(oldIndex);
              _items.insert(newIndex, item);
            });
          },
        ),
        floatingActionButton: const BackPageButton(),
      ),
    );
  }
}
