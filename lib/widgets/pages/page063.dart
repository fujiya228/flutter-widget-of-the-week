import 'package:flutter/material.dart';
import '../back_page_button.dart';

class Page063 extends StatefulWidget {
  const Page063({
    Key? key,
  }) : super(key: key);

  @override
  State<Page063> createState() => _Page063State();
}

class _Page063State extends State<Page063> {
  double targetValue = 24.0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: TweenAnimationBuilder<double>(
            tween: Tween<double>(begin: 0, end: targetValue),
            duration: const Duration(seconds: 1),
            builder: (BuildContext context, double size, Widget? child) {
              return IconButton(
                iconSize: size,
                color: Colors.blue,
                icon: child!,
                onPressed: () {
                  setState(() {
                    targetValue = targetValue == 24.0 ? 48.0 : 24.0;
                  });
                },
              );
            },
            child: const Icon(Icons.aspect_ratio),
          ),
        ),
        floatingActionButton: const BackPageButton(),
      ),
    );
  }
}
