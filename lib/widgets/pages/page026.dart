import 'package:flutter/material.dart';
import '../back_page_button.dart';

class Page026 extends StatelessWidget {
  const Page026({
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
                height: 240.0,
                width: 240.0,
                color: Colors.blue[50],
                child: Stack(
                  children: const [
                    Positioned(
                      left: 0,
                      top: 30,
                      child: FlutterLogo(
                        size: 60,
                      ),
                    ),
                    Positioned(
                      right: 30,
                      top: 60,
                      child: FlutterLogo(
                        size: 60,
                      ),
                    ),
                    Positioned(
                      right: 15,
                      bottom: 15,
                      child: FlutterLogo(
                        size: 60,
                      ),
                    ),
                    Positioned(
                      left: 30,
                      bottom: 15,
                      child: FlutterLogo(
                        size: 60,
                      ),
                    ),
                    Positioned(
                      width: 30,
                      height: 30,
                      top: 105,
                      left: 105,
                      child: FlutterLogo(
                        size: 60,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.all(8),
                height: 120.0,
                width: 120.0,
                color: Colors.blue[50],
                child: Stack(
                  children: const [
                    Positioned.fill(
                      child: FlutterLogo(
                        size: 60,
                      ),
                    ),
                  ],
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
