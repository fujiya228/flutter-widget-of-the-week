import 'package:flutter/material.dart';
import '../back_page_button.dart';

class Page037 extends StatefulWidget {
  const Page037({
    Key? key,
  }) : super(key: key);

  @override
  State<Page037> createState() => _Page037State();
}

class _Page037State extends State<Page037> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  bool status = false;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: <Widget>[
            AnimatedIcon(
              icon: AnimatedIcons.menu_arrow,
              progress: controller,
              semanticLabel: 'Show menu',
            ),
            ElevatedButton(
              onPressed: () {
                status ? controller.forward() : controller.reverse();
                setState(() {
                  status = !status;
                });
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.amber,
              ),
              child: const Text('Switch'),
            ),
          ],
        ),
        floatingActionButton: const BackPageButton(),
      ),
    );
  }
}
