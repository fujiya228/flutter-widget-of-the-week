import 'package:flutter/material.dart';
import '../back_page_button.dart';

class Page025 extends StatelessWidget {
  const Page025({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                margin: const EdgeInsets.all(8),
                height: 120.0,
                width: 120.0,
                color: Colors.blue[50],
                child: const Align(
                  alignment: Alignment.topRight,
                  child: FlutterLogo(
                    size: 60,
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.all(8),
                height: 120.0,
                width: 120.0,
                color: Colors.blue[50],
                child: const Align(
                  alignment: Alignment(0.2, 0.6),
                  child: FlutterLogo(
                    size: 60,
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.all(8),
                height: 120.0,
                width: 120.0,
                color: Colors.blue[50],
                child: const Align(
                  alignment: FractionalOffset(0.2, 0.6),
                  child: FlutterLogo(
                    size: 60,
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
