import 'package:flutter/material.dart';
import '../back_page_button.dart';

class Page035 extends StatelessWidget {
  const Page035({
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
                  const Spacer(),
                  Container(
                    color: Colors.blue,
                    height: 50,
                    width: 50,
                  ),
                  const Spacer(),
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
                  Container(
                    color: Colors.amber,
                    height: 50,
                    width: 50,
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Container(
                    color: Colors.blue,
                    height: 50,
                    width: 50,
                  ),
                  const Spacer(
                    flex: 3,
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
                  Container(
                    color: Colors.amber,
                    height: 50,
                    width: 50,
                  ),
                  const Spacer(),
                  Container(
                    color: Colors.blue,
                    height: 50,
                    width: 50,
                  ),
                  const Spacer(
                    flex: 4,
                  ),
                  Container(
                    color: Colors.amber,
                    height: 50,
                    width: 50,
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
