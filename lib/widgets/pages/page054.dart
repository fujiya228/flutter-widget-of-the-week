import 'package:flutter/material.dart';
import '../back_page_button.dart';

class Page054 extends StatelessWidget {
  const Page054({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: <Widget>[
            Center(
              child: Container(
                margin: const EdgeInsets.all(10.0),
                color: Colors.amber[600],
                width: 48.0,
                height: 48.0,
              ),
            ),
            Container(
              constraints: BoxConstraints.expand(
                height: Theme.of(context).textTheme.headline4!.fontSize! * 1.1 +
                    200.0,
              ),
              padding: const EdgeInsets.all(8.0),
              color: Colors.blue[600],
              alignment: Alignment.center,
              transform: Matrix4.rotationZ(0.1),
              child: Text('Hello World',
                  style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(color: Colors.white)),
            ),
          ],
        ),
        floatingActionButton: const BackPageButton(),
      ),
    );
  }
}
