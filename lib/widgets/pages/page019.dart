import 'package:flutter/material.dart';
import '../back_page_button.dart';
import '../page_list_tile.dart';

class Page019 extends StatelessWidget {
  const Page019({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: const [
            PageListTile(
              title: 'Sample',
              page: Sample(),
            ),
            PageListTile(
              title: 'WithStyle',
              page: WithStyle(),
            ),
            PageListTile(
              title: 'WithRichMessage',
              page: WithRichMessage(),
            ),
          ],
        ),
        floatingActionButton: const BackPageButton(),
      ),
    );
  }
}

class Sample extends StatelessWidget {
  const Sample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Tooltip(
          message: 'I am a Tooltip',
          child: Text('Hover over the text to show a tooltip.'),
        ),
      ),
      floatingActionButton: BackPageButton(),
    );
  }
}

class WithStyle extends StatelessWidget {
  const WithStyle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Tooltip(
          message: 'I am a Tooltip',
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            gradient:
                const LinearGradient(colors: <Color>[Colors.amber, Colors.red]),
          ),
          height: 50,
          padding: const EdgeInsets.all(8.0),
          preferBelow: false,
          textStyle: const TextStyle(
            fontSize: 24,
          ),
          showDuration: const Duration(seconds: 2),
          waitDuration: const Duration(seconds: 1),
          child: const Text('Tap this text and hold down to show a tooltip.'),
        ),
      ),
      floatingActionButton: const BackPageButton(),
    );
  }
}

class WithRichMessage extends StatelessWidget {
  const WithRichMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Tooltip(
          richMessage: TextSpan(
            text: 'I am a rich tooltip. ',
            style: TextStyle(color: Colors.red),
            children: <InlineSpan>[
              TextSpan(
                text: 'I am another span of this rich tooltip',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          child: Text('Tap this text and hold down to show a tooltip.'),
        ),
      ),
      floatingActionButton: BackPageButton(),
    );
  }
}
