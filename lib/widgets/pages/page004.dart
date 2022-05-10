import 'package:flutter/material.dart';
import '../back_page_button.dart';
import '../page_list_tile.dart';

class Page004 extends StatelessWidget {
  const Page004({
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
              title: 'PaddingMargin',
              page: PaddingMargin(),
            ),
          ],
        ),
        floatingActionButton: const BackPageButton(),
      ),
    );
  }
}

class Sample extends StatefulWidget {
  const Sample({Key? key}) : super(key: key);

  @override
  State<Sample> createState() => _SampleState();
}

class _SampleState extends State<Sample> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          setState(() {
            selected = !selected;
          });
        },
        child: Center(
          child: AnimatedContainer(
            width: selected ? 200.0 : 100.0,
            height: selected ? 100.0 : 200.0,
            color: selected ? Colors.red : Colors.blue,
            alignment:
                selected ? Alignment.center : AlignmentDirectional.topCenter,
            duration: const Duration(seconds: 2),
            curve: Curves.fastOutSlowIn,
            child: FlutterLogo(size: selected ? 75 : 25),
          ),
        ),
      ),
      floatingActionButton: const BackPageButton(),
    );
  }
}

class PaddingMargin extends StatefulWidget {
  const PaddingMargin({Key? key}) : super(key: key);

  @override
  State<PaddingMargin> createState() => _PaddingMarginState();
}

class _PaddingMarginState extends State<PaddingMargin> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          setState(() {
            selected = !selected;
          });
        },
        child: Center(
          child: Container(
            color: Colors.teal,
            child: AnimatedContainer(
              width: 200.0,
              height: 200.0,
              padding: EdgeInsets.all(selected ? 25.0 : 75.0),
              margin: EdgeInsets.all(selected ? 50.0 : 25.0),
              color: selected ? Colors.amber : Colors.blue,
              duration: const Duration(seconds: 2),
              curve: Curves.fastOutSlowIn,
              child: Container(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: const BackPageButton(),
    );
  }
}
