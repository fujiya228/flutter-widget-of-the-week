import 'package:flutter/material.dart';
import '../back_page_button.dart';

class Page051 extends StatelessWidget {
  const Page051({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: <Widget>[
            Container(
              height: 100,
              margin: const EdgeInsets.only(bottom: 8),
              color: Colors.amber,
              child: FractionallySizedBox(
                widthFactor: 0.5,
                heightFactor: 0.5,
                alignment: FractionalOffset.center,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.blue,
                      width: 4,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 100,
              margin: const EdgeInsets.only(bottom: 8),
              color: Colors.amber,
              child: Container(
                alignment: Alignment.topLeft,
                child: FractionallySizedBox(
                  widthFactor: 0.7,
                  heightFactor: 0.5,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                        width: 4,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 100,
              margin: const EdgeInsets.only(bottom: 8),
              color: Colors.amber,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.blue,
                  ),
                  const Flexible(
                    child: FractionallySizedBox(
                      widthFactor: 0.5,
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.blue,
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
