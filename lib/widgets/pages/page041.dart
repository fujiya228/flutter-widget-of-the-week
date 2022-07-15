import 'package:flutter/material.dart';
import '../back_page_button.dart';

class Page041 extends StatelessWidget {
  const Page041({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            RichText(
              text: TextSpan(
                text: 'Hello ',
                style: DefaultTextStyle.of(context).style,
                children: const <TextSpan>[
                  TextSpan(
                      text: 'bold',
                      style: TextStyle(fontStyle: FontStyle.italic)),
                  TextSpan(text: ' world!'),
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
