import 'package:flutter/material.dart';
import '../back_page_button.dart';

class Page043 extends StatefulWidget {
  const Page043({
    Key? key,
  }) : super(key: key);

  @override
  State<Page043> createState() => _Page043State();
}

class _Page043State extends State<Page043> {
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 500),
                transitionBuilder: (Widget child, Animation<double> animation) {
                  return ScaleTransition(
                    scale: animation,
                    child: RotationTransition(
                      turns: animation,
                      child: FadeTransition(
                        opacity: animation,
                        child: child,
                      ),
                    ),
                  );
                },
                child: Container(
                  color: _color,
                  width: 200,
                  height: 100,
                  key: ValueKey<Color>(_color),
                ),
              ),
              ElevatedButton(
                child: const Text('siwtch'),
                onPressed: () {
                  setState(() {
                    _color = _color == Colors.blue ? Colors.amber : Colors.blue;
                  });
                },
              ),
            ],
          ),
        ),
        floatingActionButton: const BackPageButton(),
      ),
    );
  }
}
