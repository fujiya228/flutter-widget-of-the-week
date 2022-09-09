import 'package:flutter/material.dart';
import '../back_page_button.dart';

class Page068 extends StatelessWidget {
  const Page068({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListWheelScrollView(
          itemExtent: 60,
          diameterRatio: 2.0,
          offAxisFraction: -0.5,
          children: <Widget>[
            Container(
              color: Colors.amber,
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.amber,
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.amber,
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.amber,
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.amber,
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.amber,
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.amber,
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.amber,
            ),
            Container(
              color: Colors.blue,
            ),
          ],
        ),
        floatingActionButton: const BackPageButton(),
      ),
    );
  }
}
