import 'package:flutter/material.dart';

class BackPageButton extends StatelessWidget {
  const BackPageButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => Navigator.pop(context),
      child: const Icon(Icons.keyboard_double_arrow_left_rounded),
    );
  }
}
