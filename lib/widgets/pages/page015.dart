import 'package:flutter/material.dart';
import '../back_page_button.dart';

class Page015 extends StatelessWidget {
  const Page015({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _Page015Stateful(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            _Page015ColorOneWidget(),
            _Page015ColorTwoWidget(),
            _Page015ColorChangerWidget(),
          ],
        ),
      ),
      floatingActionButton: const BackPageButton(),
    );
  }
}

class _Page015Stateful extends StatefulWidget {
  const _Page015Stateful({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  _Page015StatefulState createState() => _Page015StatefulState();
}

class _Page015StatefulState extends State<_Page015Stateful> {
  Color colorOne = Colors.red;
  Color colorTwo = Colors.blue;

  static _Page015StatefulState? of(BuildContext context) {
    return context.findAncestorStateOfType<_Page015StatefulState>();
  }

  void changeColorOne() {
    setState(() {
      colorOne = (colorOne == Colors.red) ? Colors.green : Colors.red;
    });
  }

  void changeColorTwo() {
    setState(() {
      colorTwo = (colorTwo == Colors.blue) ? Colors.yellow : Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return _Page015InheritedModel(
      colorOne,
      colorTwo,
      widget.child,
    );
  }
}

class _Page015InheritedModel extends InheritedModel<String> {
  const _Page015InheritedModel(
    this.colorOne,
    this.colorTwo,
    Widget child,
  ) : super(child: child);

  final Color colorOne;
  final Color colorTwo;

  // ignore: unused_element
  static _Page015InheritedModel? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<_Page015InheritedModel>();
  }

  @override
  bool updateShouldNotify(_Page015InheritedModel oldWidget) {
    return colorOne != oldWidget.colorOne || colorTwo != oldWidget.colorTwo;
  }

  @override
  bool updateShouldNotifyDependent(
    _Page015InheritedModel oldWidget,
    Set<String> dependencies,
  ) {
    if (dependencies.contains('one') && colorOne != oldWidget.colorOne) {
      return true;
    }
    if (dependencies.contains('two') && colorTwo != oldWidget.colorTwo) {
      return true;
    }
    return false;
  }
}

class _Page015ColorOneWidget extends StatelessWidget {
  const _Page015ColorOneWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print
    print('_Page015ColorOneWidget#build');
    final inherited = InheritedModel.inheritFrom<_Page015InheritedModel>(
      context,
      aspect: 'one',
    );
    return Container(
      color: inherited?.colorOne,
      height: 100,
      width: 100,
    );
  }
}

class _Page015ColorTwoWidget extends StatelessWidget {
  const _Page015ColorTwoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print
    print('_Page015ColorTwoWidget#build');
    final inherited = InheritedModel.inheritFrom<_Page015InheritedModel>(
      context,
      aspect: 'two',
    );
    return Container(
      color: inherited?.colorTwo,
      height: 100,
      width: 100,
    );
  }
}

class _Page015ColorChangerWidget extends StatelessWidget {
  const _Page015ColorChangerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print
    print('_Page015ColorChangerWidget#build');
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(
          onPressed: () => _Page015StatefulState.of(context)?.changeColorOne(),
          child: const Text('Change colorOne'),
        ),
        ElevatedButton(
          onPressed: () => _Page015StatefulState.of(context)?.changeColorTwo(),
          child: const Text('Change colorTwo'),
        ),
      ],
    );
  }
}
