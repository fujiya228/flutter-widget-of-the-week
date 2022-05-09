import 'package:flutter/material.dart';
import '../back_page_button.dart';

class Page003 extends StatelessWidget {
  const Page003({
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
                    margin: const EdgeInsets.all(8.0),
                    color: Colors.blue,
                    height: 60,
                    width: 60,
                  ),
                  Container(
                    margin: const EdgeInsets.all(8.0),
                    color: Colors.amber,
                    height: 60,
                    width: 60,
                  ),
                  Container(
                    margin: const EdgeInsets.all(8.0),
                    color: Colors.blue,
                    height: 60,
                    width: 60,
                  ),
                  Container(
                    margin: const EdgeInsets.all(8.0),
                    color: Colors.amber,
                    height: 60,
                    width: 60,
                  ),
                  Container(
                    margin: const EdgeInsets.all(8.0),
                    color: Colors.blue,
                    height: 60,
                    width: 60,
                  ),
                ],
              ),
            ),
            const Divider(),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: const Text('1'),
                    color: Colors.blue,
                    height: 60,
                    width: 60,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: const Text('2'),
                    color: Colors.amber,
                    height: 60,
                    width: 60,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: const Text('3'),
                    color: Colors.blue,
                    height: 60,
                    width: 60,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: const Text('4'),
                    color: Colors.amber,
                    height: 60,
                    width: 60,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: const Text('5'),
                    color: Colors.blue,
                    height: 60,
                    width: 60,
                  ),
                ],
              ),
            ),
            const Divider(),
            Container(
              height: 240,
              padding: const EdgeInsets.all(8.0),
              child: Wrap(
                direction: Axis.vertical,
                spacing: 16,
                runSpacing: 16,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: const Text('1'),
                    color: Colors.blue,
                    height: 60,
                    width: 60,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: const Text('2'),
                    color: Colors.amber,
                    height: 60,
                    width: 60,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: const Text('3'),
                    color: Colors.blue,
                    height: 60,
                    width: 60,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: const Text('4'),
                    color: Colors.amber,
                    height: 60,
                    width: 60,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: const Text('5'),
                    color: Colors.blue,
                    height: 60,
                    width: 60,
                  ),
                ],
              ),
            ),
            const Divider(),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: Wrap(
                alignment: WrapAlignment.end,
                spacing: 16,
                runSpacing: 16,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: const Text('1'),
                    color: Colors.blue,
                    height: 60,
                    width: 60,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: const Text('2'),
                    color: Colors.amber,
                    height: 60,
                    width: 60,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: const Text('3'),
                    color: Colors.blue,
                    height: 60,
                    width: 60,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: const Text('4'),
                    color: Colors.amber,
                    height: 60,
                    width: 60,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: const Text('5'),
                    color: Colors.blue,
                    height: 60,
                    width: 60,
                  ),
                ],
              ),
            ),
            const Divider(),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: Wrap(
                alignment: WrapAlignment.spaceBetween,
                spacing: 16,
                runSpacing: 16,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: const Text('1'),
                    color: Colors.blue,
                    height: 60,
                    width: 60,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: const Text('2'),
                    color: Colors.amber,
                    height: 60,
                    width: 60,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: const Text('3'),
                    color: Colors.blue,
                    height: 60,
                    width: 60,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: const Text('4'),
                    color: Colors.amber,
                    height: 60,
                    width: 60,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: const Text('5'),
                    color: Colors.blue,
                    height: 60,
                    width: 60,
                  ),
                ],
              ),
            ),
            const Divider(),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: Wrap(
                alignment: WrapAlignment.spaceAround,
                spacing: 16,
                runSpacing: 16,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: const Text('1'),
                    color: Colors.blue,
                    height: 60,
                    width: 60,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: const Text('2'),
                    color: Colors.amber,
                    height: 60,
                    width: 60,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: const Text('3'),
                    color: Colors.blue,
                    height: 60,
                    width: 60,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: const Text('4'),
                    color: Colors.amber,
                    height: 60,
                    width: 60,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: const Text('5'),
                    color: Colors.blue,
                    height: 60,
                    width: 60,
                  ),
                ],
              ),
            ),
            const Divider(),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: Wrap(
                alignment: WrapAlignment.spaceEvenly,
                spacing: 16,
                runSpacing: 16,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: const Text('1'),
                    color: Colors.blue,
                    height: 60,
                    width: 60,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: const Text('2'),
                    color: Colors.amber,
                    height: 60,
                    width: 60,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: const Text('3'),
                    color: Colors.blue,
                    height: 60,
                    width: 60,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: const Text('4'),
                    color: Colors.amber,
                    height: 60,
                    width: 60,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: const Text('5'),
                    color: Colors.blue,
                    height: 60,
                    width: 60,
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
