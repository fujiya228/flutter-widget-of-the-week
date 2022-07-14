import 'package:flutter/material.dart';
import '../back_page_button.dart';

class Page040 extends StatelessWidget {
  const Page040({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.blue,
                alignment: Alignment.center,
                width: double.infinity,
                height: 100.0,
                child: const AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Placeholder(
                    color: Colors.amber,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.blue,
                alignment: Alignment.center,
                width: 100.0,
                height: 100.0,
                child: const AspectRatio(
                  aspectRatio: 2.0,
                  child: Placeholder(
                    color: Colors.amber,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.blue,
                alignment: Alignment.center,
                width: 100.0,
                height: 100.0,
                child: const AspectRatio(
                  aspectRatio: 0.5,
                  child: Placeholder(
                    color: Colors.amber,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              color: Colors.blue,
              height: 100.0,
              child: const Expanded(
                child: AspectRatio(
                  aspectRatio: 2 / 1,
                  child: Placeholder(
                    color: Colors.amber,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              color: Colors.blue,
              height: 100.0,
              child: const Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: AspectRatio(
                    aspectRatio: 2 / 1,
                    child: Placeholder(
                      color: Colors.amber,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: const BackPageButton(),
      ),
    );
  }
}
