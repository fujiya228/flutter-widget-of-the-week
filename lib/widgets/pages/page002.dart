import 'package:flutter/material.dart';
import '../back_page_button.dart';

class Page002 extends StatelessWidget {
  const Page002({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    color: Colors.amber,
                    height: 50,
                    width: 50,
                  ),
                  Container(
                    color: Colors.blue,
                    height: 50,
                    width: 50,
                  ),
                  Container(
                    color: Colors.amber,
                    height: 50,
                    width: 50,
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.amber,
                      height: 50,
                      width: 50,
                    ),
                  ),
                  Container(
                    color: Colors.blue,
                    height: 50,
                    width: 50,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.amber,
                      height: 50,
                      width: 50,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      alignment: Alignment.center,
                      child: const Text('flex: 1'),
                      color: Colors.amber,
                      height: 50,
                      width: 50,
                    ),
                  ),
                  Container(
                    color: Colors.blue,
                    height: 50,
                    width: 50,
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      alignment: Alignment.center,
                      child: const Text('flex: 1'),
                      color: Colors.amber,
                      height: 50,
                      width: 50,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      alignment: Alignment.center,
                      child: const Text('flex: 3'),
                      color: Colors.amber,
                      height: 50,
                      width: 50,
                    ),
                  ),
                  Container(
                    color: Colors.blue,
                    height: 50,
                    width: 50,
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      alignment: Alignment.center,
                      child: const Text('flex: 1'),
                      color: Colors.amber,
                      height: 50,
                      width: 50,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      alignment: Alignment.center,
                      child: const Text('flex: 3'),
                      color: Colors.amber,
                      height: 50,
                      width: 50,
                    ),
                  ),
                  Container(
                    color: Colors.blue,
                    height: 50,
                    width: 50,
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      alignment: Alignment.center,
                      child: const Text('flex: 2'),
                      color: Colors.amber,
                      height: 50,
                      width: 50,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: const BackPageButton(),
      ),
    );
  }
}
