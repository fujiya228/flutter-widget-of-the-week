import 'package:flutter/material.dart';
import '../back_page_button.dart';

class Page016 extends StatelessWidget {
  const Page016({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(16.0),
              padding: const EdgeInsets.all(16.0),
              color: Colors.blue,
              child: Container(
                color: Colors.amber,
                padding: const EdgeInsets.all(16.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Container(
                    color: Colors.black,
                    height: 100,
                    width: 100,
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(16.0),
              padding: const EdgeInsets.all(16.0),
              color: Colors.blue,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Container(
                  color: Colors.amber,
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    color: Colors.black,
                    height: 100,
                    width: 100,
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(16.0),
              padding: const EdgeInsets.all(16.0),
              color: Colors.blue,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Container(
                  color: Colors.amber,
                  padding: const EdgeInsets.all(16.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Container(
                      color: Colors.black,
                      height: 100,
                      width: 100,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(16.0),
              padding: const EdgeInsets.all(16.0),
              color: Colors.blue,
              child: Container(
                color: Colors.amber,
                padding: const EdgeInsets.all(16.0),
                child: Align(
                  alignment: Alignment.topCenter,
                  heightFactor: 0.5,
                  child: Container(
                    color: Colors.black,
                    height: 100,
                    width: 100,
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(16.0),
              padding: const EdgeInsets.all(16.0),
              color: Colors.blue,
              child: Container(
                color: Colors.amber,
                padding: const EdgeInsets.all(16.0),
                child: ClipRect(
                  child: Align(
                    alignment: Alignment.topCenter,
                    heightFactor: 0.5,
                    child: Container(
                      color: Colors.black,
                      height: 100,
                      width: 100,
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
