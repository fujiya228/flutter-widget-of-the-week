import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../back_page_button.dart';

class Page048 extends StatefulWidget {
  const Page048({
    Key? key,
  }) : super(key: key);

  @override
  State<Page048> createState() => _Page048State();
}

class _Page048State extends State<Page048> {
  double padValue = 0.0;
  double selectedValue = 20.0;

  static final boxConstraintsList = <String, BoxConstraints>{
    'maxWidth: 100': const BoxConstraints(maxWidth: 100.0),
    'minWidth: 100': const BoxConstraints(maxWidth: 100.0),
    'maxHeight: 100': const BoxConstraints(maxHeight: 100.0),
    'minHeight: 100': const BoxConstraints(maxHeight: 100.0),
    'maxWidth: 200': const BoxConstraints(maxWidth: 200.0),
    'minWidth: 200': const BoxConstraints(maxWidth: 200.0),
    'maxHeight: 200': const BoxConstraints(maxHeight: 200.0),
    'minHeight: 200': const BoxConstraints(maxHeight: 200.0),
  };

  void _switchPadding() {
    setState(() {
      padValue = padValue == 0 ? selectedValue : 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: boxConstraintsList.entries
              .map(
                (entry) => Padding(
                  padding: EdgeInsets.symmetric(horizontal: padValue),
                  child: ConstrainedBox(
                    constraints: entry.value,
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 1),
                      padding: const EdgeInsets.all(8),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 12,
                      color: Colors.amber,
                      child: Text(entry.key),
                    ),
                  ),
                ),
              )
              .toList(),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const Text('padding'),
                    DropdownButton(
                      items: [
                        20.0,
                        40.0,
                        60.0,
                        80.0,
                        100.0,
                        120.0,
                        140.0,
                        160.0,
                        180.0,
                        200.0
                      ]
                          .map<DropdownMenuItem<double>>(
                              (double item) => DropdownMenuItem<double>(
                                    value: item,
                                    child: Text(item.toString()),
                                  ))
                          .toList(),
                      value: selectedValue,
                      onChanged: (value) => {
                        setState(() {
                          selectedValue = value as double;
                          padValue = selectedValue;
                        }),
                      },
                    ),
                  ],
                ),
                IconButton(
                  onPressed: _switchPadding,
                  icon: const Icon(Icons.repeat),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: const BackPageButton(),
      ),
    );
  }
}
