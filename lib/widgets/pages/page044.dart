import 'package:flutter/material.dart';
import '../back_page_button.dart';

class Page044 extends StatefulWidget {
  const Page044({
    Key? key,
  }) : super(key: key);

  @override
  State<Page044> createState() => _Page044State();
}

class _Page044State extends State<Page044> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SizedBox(
            width: 200,
            height: 350,
            child: Stack(
              children: <Widget>[
                AnimatedPositioned(
                  width: selected ? 200.0 : 50.0,
                  height: selected ? 50.0 : 200.0,
                  top: selected ? 50.0 : 150.0,
                  duration: const Duration(seconds: 2),
                  curve: Curves.fastOutSlowIn,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selected = !selected;
                      });
                    },
                    child: Container(
                      color: Colors.blue,
                      child: const Center(child: Text('Tap me')),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: const BackPageButton(),
      ),
    );
  }
}
