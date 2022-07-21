import 'package:flutter/material.dart';
import '../back_page_button.dart';

class Page047 extends StatelessWidget {
  const Page047({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Semantics(
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.amber,
                ),
                label: 'Container',
                enabled: false,
              ),
            ],
          ),
        ),
        floatingActionButton: const BackPageButton(),
      ),
    );
  }
}
