import 'package:flutter/material.dart';
import '../back_page_button.dart';

class Page061 extends StatefulWidget {
  const Page061({
    Key? key,
  }) : super(key: key);

  @override
  State<Page061> createState() => _Page061State();
}

class _Page061State extends State<Page061> {
  List<bool> isSelected = List.generate(3, (_) => false);
  List<bool> isSelected2 = List.generate(3, (_) => false);
  List<bool> isSelected3 = List.generate(3, (_) => false);
  List<bool> isSelected4 = List.generate(3, (_) => false);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(8.0),
              child: ToggleButtons(
                children: const <Widget>[
                  Icon(Icons.ac_unit),
                  Icon(Icons.call),
                  Icon(Icons.cake),
                ],
                onPressed: (int index) {
                  setState(() {
                    isSelected[index] = !isSelected[index];
                  });
                },
                isSelected: isSelected,
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(8.0),
              child: ToggleButtons(
                children: const <Widget>[
                  Icon(Icons.ac_unit),
                  Icon(Icons.call),
                  Icon(Icons.cake),
                ],
                onPressed: (int index) {
                  setState(() {
                    for (int buttonIndex = 0;
                        buttonIndex < isSelected2.length;
                        buttonIndex++) {
                      if (buttonIndex == index) {
                        isSelected2[buttonIndex] = true;
                      } else {
                        isSelected2[buttonIndex] = false;
                      }
                    }
                  });
                },
                isSelected: isSelected2,
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(8.0),
              child: ToggleButtons(
                children: const <Widget>[
                  Icon(Icons.ac_unit),
                  Icon(Icons.call),
                  Icon(Icons.cake),
                ],
                onPressed: (int index) {
                  setState(() {
                    for (int buttonIndex = 0;
                        buttonIndex < isSelected3.length;
                        buttonIndex++) {
                      if (buttonIndex == index) {
                        isSelected3[buttonIndex] = !isSelected3[buttonIndex];
                      } else {
                        isSelected3[buttonIndex] = false;
                      }
                    }
                  });
                },
                isSelected: isSelected3,
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(8.0),
              child: ToggleButtons(
                children: const <Widget>[
                  Icon(Icons.ac_unit),
                  Icon(Icons.call),
                  Icon(Icons.cake),
                ],
                onPressed: (int index) {
                  int count = 0;
                  for (var val in isSelected4) {
                    if (val) count++;
                  }

                  if (isSelected4[index] && count < 2) return;

                  setState(() {
                    isSelected4[index] = !isSelected4[index];
                  });
                },
                isSelected: isSelected4,
              ),
            ),
          ],
        ),
        floatingActionButton: const BackPageButton(),
      ),
    );
  }
}
