import 'package:flutter/material.dart';
import '../back_page_button.dart';

class Page050 extends StatefulWidget {
  const Page050({
    Key? key,
  }) : super(key: key);

  @override
  State<Page050> createState() => _Page050State();
}

class _Page050State extends State<Page050> {
  double opacityValue = 0.0;
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
      opacityValue = opacityValue == 0 ? 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: curves.entries
              .map(
                (entry) => AnimatedOpacity(
                  opacity: opacityValue,
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
                          opacityValue = 0;
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
