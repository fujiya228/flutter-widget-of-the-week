import 'package:flutter/material.dart';
import '../back_page_button.dart';

class Page031 extends StatefulWidget {
  const Page031({
    Key? key,
  }) : super(key: key);

  @override
  State<Page031> createState() => _Page031State();
}

class _Page031State extends State<Page031> {
  int acceptedData = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Draggable<int>(
                // Data is the value this Draggable stores.
                data: 10,
                feedback: Container(
                  color: Colors.deepOrange,
                  height: 100,
                  width: 100,
                  child: const Icon(Icons.directions_run),
                ),
                childWhenDragging: Container(
                  height: 100.0,
                  width: 100.0,
                  color: Colors.pinkAccent,
                  child: const Center(
                    child: Text('Child When Dragging'),
                  ),
                ),
                child: Container(
                  height: 100.0,
                  width: 100.0,
                  color: Colors.lightGreenAccent,
                  child: const Center(
                    child: Text('Draggable'),
                  ),
                ),
              ),
              DragTarget<int>(
                builder: (
                  BuildContext context,
                  List<dynamic> accepted,
                  List<dynamic> rejected,
                ) {
                  return Container(
                    height: 100.0,
                    width: 100.0,
                    color: Colors.cyan,
                    child: Center(
                      child: Text('Value is updated to: $acceptedData'),
                    ),
                  );
                },
                onAccept: (int data) {
                  setState(() {
                    acceptedData += data;
                  });
                },
              ),
            ],
          ),
        ),
        floatingActionButton: const BackPageButton(),
      ),
    );
  }
}
