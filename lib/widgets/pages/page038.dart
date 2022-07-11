import 'package:flutter/material.dart';
import '../back_page_button.dart';

class Page038 extends StatelessWidget {
  const Page038({
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
                child: AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Container(
                    color: Colors.green,
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
                child: AspectRatio(
                  aspectRatio: 2.0,
                  child: Container(
                    width: 100.0,
                    height: 50.0,
                    color: Colors.green,
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
                child: AspectRatio(
                  aspectRatio: 0.5,
                  child: Container(
                    width: 100.0,
                    height: 50.0,
                    color: Colors.green,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              color: Colors.blue,
              height: 100.0,
              child: Expanded(
                child: AspectRatio(
                  aspectRatio: 2 / 1,
                  child: Container(
                    width: 100.0,
                    height: 50.0,
                    color: Colors.green,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              color: Colors.blue,
              height: 100.0,
              child: Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: AspectRatio(
                    aspectRatio: 2 / 1,
                    child: Container(
                      width: 100.0,
                      height: 50.0,
                      color: Colors.green,
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
