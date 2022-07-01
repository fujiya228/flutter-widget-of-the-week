import 'package:flutter/material.dart';
import '../back_page_button.dart';

class Page034 extends StatelessWidget {
  const Page034({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('size : ${MediaQuery.of(context).size}'),
              Text('orientation : ${MediaQuery.of(context).orientation}'),
              Text(
                  'textScaleFactor : ${MediaQuery.of(context).textScaleFactor}'),
              Text('padding : ${MediaQuery.of(context).padding}'),
              Text(
                  'disableAnimations : ${MediaQuery.of(context).disableAnimations}'),
              Text(
                  'platformBrightness : ${MediaQuery.of(context).platformBrightness}'),
              Text(
                  'accessibleNavigation : ${MediaQuery.of(context).accessibleNavigation}'),
              Text(
                  'alwaysUse24HourFormat : ${MediaQuery.of(context).alwaysUse24HourFormat}'),
              Text('boldText : ${MediaQuery.of(context).boldText}'),
              Text(
                  'devicePixelRatio : ${MediaQuery.of(context).devicePixelRatio}'),
              Text(
                  'displayFeatures : ${MediaQuery.of(context).displayFeatures}'),
              Text(
                  'gestureSettings : ${MediaQuery.of(context).gestureSettings}'),
              Text('hashCode : ${MediaQuery.of(context).hashCode}'),
              Text('highContrast : ${MediaQuery.of(context).highContrast}'),
              Text('invertColors  : ${MediaQuery.of(context).invertColors}'),
              Text('navigationMode : ${MediaQuery.of(context).navigationMode}'),
              Text('runtimeType : ${MediaQuery.of(context).runtimeType}'),
              Text(
                  'systemGestureInsets : ${MediaQuery.of(context).systemGestureInsets}'),
              Text(
                  'textScaleFactor : ${MediaQuery.of(context).textScaleFactor}'),
              Text('viewInsets : ${MediaQuery.of(context).viewInsets}'),
              Text('viewPadding : ${MediaQuery.of(context).viewPadding}'),
            ],
          ),
        ),
        floatingActionButton: const BackPageButton(),
      ),
    );
  }
}
