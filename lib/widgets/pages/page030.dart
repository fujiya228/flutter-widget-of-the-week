import 'package:flutter/material.dart';
import '../back_page_button.dart';

class Page030 extends StatefulWidget {
  const Page030({
    Key? key,
  }) : super(key: key);

  @override
  State<Page030> createState() => _Page030State();
}

class _Page030State extends State<Page030> {
  final ValueNotifier<int> _counter = ValueNotifier<int>(0);
  final Widget goodJob = const Text('Good job!');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            ValueListenableBuilder<int>(
              builder: (BuildContext context, int value, Widget? child) {
                // This builder will only get called when the _counter
                // is updated.
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text('$value'),
                    child!,
                  ],
                );
              },
              valueListenable: _counter,
              // The child parameter is most helpful if the child is
              // expensive to build and does not depend on the value from
              // the notifier.
              child: goodJob,
            ),
            ElevatedButton(
              onPressed: () => _counter.value += 1,
              child: const Icon(Icons.plus_one),
            ),
          ],
        ),
      ),
      floatingActionButton: const BackPageButton(),
    );
  }
}
