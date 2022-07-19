import 'package:flutter/material.dart';
import '../back_page_button.dart';

class Page045 extends StatefulWidget {
  const Page045({
    Key? key,
  }) : super(key: key);

  @override
  State<Page045> createState() => _Page045State();
}

class _Page045State extends State<Page045> {
  double selectedValue = 100.0;
  double padValue = 0.0;
  int durationValue = 1000;

  static final curves = <String, Curve>{
    'linear': Curves.linear,
    'decelerate': Curves.decelerate,
    'fastLinearToSlowEaseIn': Curves.fastLinearToSlowEaseIn,
    'ease': Curves.ease,
    'easeIn': Curves.easeIn,
    'easeInToLinear': Curves.easeInToLinear,
    'easeInSine': Curves.easeInSine,
    'easeInQuad': Curves.easeInQuad,
    'easeInCubic': Curves.easeInCubic,
    'easeInQuart': Curves.easeInQuart,
    'easeInQuint': Curves.easeInQuint,
    'easeInExpo': Curves.easeInExpo,
    'easeInCirc': Curves.easeInCirc,
    'easeInBack': Curves.easeInBack,
    'easeOut': Curves.easeOut,
    'linearToEaseOut': Curves.linearToEaseOut,
    'easeOutSine': Curves.easeOutSine,
    'easeOutQuad': Curves.easeOutQuad,
    'easeOutCubic': Curves.easeOutCubic,
    'easeOutQuart': Curves.easeOutQuart,
    'easeOutQuint': Curves.easeOutQuint,
    'easeOutExpo': Curves.easeOutExpo,
    'easeOutCirc': Curves.easeOutCirc,
    'easeOutBack': Curves.easeOutBack,
    'easeInOut': Curves.easeInOut,
    'easeInOutSine': Curves.easeInOutSine,
    'easeInOutQuad': Curves.easeInOutQuad,
    'easeInOutCubic': Curves.easeInOutCubic,
    'easeInOutQuart': Curves.easeInOutQuart,
    'easeInOutQuint': Curves.easeInOutQuint,
    'easeInOutExpo': Curves.easeInOutExpo,
    'easeInOutCirc': Curves.easeInOutCirc,
    'easeInOutBack': Curves.easeInOutBack,
    'fastOutSlowIn': Curves.fastOutSlowIn,
    'slowMiddle': Curves.slowMiddle,
    'bounceIn': Curves.bounceIn,
    'bounceOut': Curves.bounceOut,
    'bounceInOut': Curves.bounceInOut,
    'elasticIn': Curves.elasticIn,
    'elasticOut': Curves.elasticOut,
    'elasticInOut': Curves.elasticInOut,
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
        body: ListView(
          children: curves.entries
              .map(
                (entry) => AnimatedPadding(
                  padding: EdgeInsets.symmetric(horizontal: padValue),
                  duration: Duration(milliseconds: durationValue),
                  curve: entry.value,
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 1),
                    padding: const EdgeInsets.all(8),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 20,
                    color: Colors.amber,
                    child: Text(entry.key),
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
                      items: [20.0, 40.0, 60.0, 80.0, 100.0]
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
                          padValue = 0;
                        }),
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const Text('duration'),
                    DropdownButton(
                      items: [200, 400, 600, 800, 1000, 2000, 4000]
                          .map<DropdownMenuItem<int>>(
                              (int item) => DropdownMenuItem<int>(
                                    value: item,
                                    child: Text(item.toString()),
                                  ))
                          .toList(),
                      value: durationValue,
                      onChanged: (value) => {
                        setState(() {
                          durationValue = value as int;
                          padValue = 0;
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
