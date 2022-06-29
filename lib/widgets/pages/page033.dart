import 'package:flutter/material.dart';
import '../back_page_button.dart';

class Page033 extends StatelessWidget {
  const Page033({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Flexible(
                flex: 2,
                child: Container(
                  color: Colors.amber,
                ),
              ),
              Flexible(
                flex: 3,
                child: Container(
                  color: Colors.blue,
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  color: Colors.amber,
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: const BackPageButton(),
      ),
    );
  }
}
