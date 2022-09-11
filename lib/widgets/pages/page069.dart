import 'package:flutter/material.dart';
import '../back_page_button.dart';

class Page069 extends StatelessWidget {
  const Page069({
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
              child: ShaderMask(
                shaderCallback: (Rect bounds) {
                  return RadialGradient(
                    center: Alignment.topLeft,
                    radius: 1.0,
                    colors: <Color>[Colors.yellow, Colors.deepOrange.shade900],
                    tileMode: TileMode.mirror,
                  ).createShader(bounds);
                },
                child: const Text('I’m burning the memories'),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: ShaderMask(
                shaderCallback: (Rect bounds) {
                  return RadialGradient(
                    center: Alignment.topLeft,
                    radius: 1.0,
                    colors: <Color>[Colors.yellow, Colors.deepOrange.shade900],
                    tileMode: TileMode.mirror,
                  ).createShader(bounds);
                },
                child: const Text(
                  'I’m burning the memories',
                  style: TextStyle(color: Colors.white),
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
