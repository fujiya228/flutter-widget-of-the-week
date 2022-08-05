import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../back_page_button.dart';

class Page056 extends StatefulWidget {
  const Page056({
    Key? key,
  }) : super(key: key);

  @override
  State<Page056> createState() => _Page056State();
}

class _Page056State extends State<Page056> {
  double _currentSliderValue = 20;
  RangeValues _currentRangeValues = const RangeValues(40, 80);
  double _currentSliderValue2 = 0.0;
  String? _sliderStatus;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CupertinoPageScaffold(
          child: ListView(
            children: <Widget>[
              Slider(
                value: _currentSliderValue,
                max: 100,
                divisions: 5,
                label: _currentSliderValue.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    _currentSliderValue = value;
                  });
                },
              ),
              RangeSlider(
                values: _currentRangeValues,
                max: 100,
                divisions: 5,
                labels: RangeLabels(
                  _currentRangeValues.start.round().toString(),
                  _currentRangeValues.end.round().toString(),
                ),
                onChanged: (RangeValues values) {
                  setState(() {
                    _currentRangeValues = values;
                  });
                },
              ),
              Center(
                child: Text(
                  '$_currentSliderValue2',
                ),
              ),
              CupertinoSlider(
                key: const Key('slider'),
                value: _currentSliderValue2,
                divisions: 5,
                max: 100,
                activeColor: CupertinoColors.systemPurple,
                thumbColor: CupertinoColors.systemPurple,
                onChangeStart: (double value) {
                  setState(() {
                    _sliderStatus = 'Sliding';
                  });
                },
                onChangeEnd: (double value) {
                  setState(() {
                    _sliderStatus = 'Finished sliding';
                  });
                },
                onChanged: (double value) {
                  setState(() {
                    _currentSliderValue2 = value;
                  });
                },
              ),
              Center(
                child: Text(
                  _sliderStatus ?? '',
                  style:
                      CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                            fontSize: 12,
                          ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: const BackPageButton(),
      ),
    );
  }
}
