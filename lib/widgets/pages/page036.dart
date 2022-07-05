import 'package:flutter/material.dart';
import '../back_page_button.dart';
import '../page_list_tile.dart';

class Page036 extends StatefulWidget {
  const Page036({
    Key? key,
  }) : super(key: key);

  @override
  State<Page036> createState() => _Page036State();
}

class _Page036State extends State<Page036> {
  var _color = Colors.green;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            PageListTile(
              title: 'FirstPage',
              page: FrogColor(
                color: _color,
                child: const FirstPage(),
              ),
            ),
            const PageListTile(
              title: 'SecondPage',
              page: SecondPage(),
            ),
            const PageListTile(
              title: 'DoesNotWorkPage',
              page: DoesNotWorkPage(),
            ),
            ListTile(
              title: Text(
                'text color',
                style: TextStyle(color: _color),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _color = Colors.red == _color ? Colors.green : Colors.red;
                });
              },
              style: ElevatedButton.styleFrom(
                primary: _color,
              ),
              child: const Text('Switch'),
            ),
          ],
        ),
        floatingActionButton: const BackPageButton(),
      ),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Text(
            'Hello Frog',
            style: TextStyle(color: FrogColor.of(context).color),
          ),
        ),
        floatingActionButton: const BackPageButton(),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _color = FrogColor.of(context).color;
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Text(
            'Hello Frog',
            style: TextStyle(color: _color),
          ),
        ),
        floatingActionButton: const BackPageButton(),
      ),
    );
  }
}

class DoesNotWorkPage extends StatelessWidget {
  const DoesNotWorkPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: FrogColor(
          color: Colors.green,
          child: Text(
            'Hello Frog',
            style: TextStyle(color: FrogColor.of(context).color),
          ),
        ),
        floatingActionButton: const BackPageButton(),
      ),
    );
  }
}

class FrogColor extends InheritedWidget {
  const FrogColor({
    Key? key,
    required this.color,
    required Widget child,
  }) : super(key: key, child: child);

  final Color color;

  static FrogColor of(BuildContext context) {
    final FrogColor? result =
        context.dependOnInheritedWidgetOfExactType<FrogColor>();
    assert(result != null, 'No FrogColor found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(FrogColor oldWidget) => color != oldWidget.color;
}
