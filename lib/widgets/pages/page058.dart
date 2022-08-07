// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import '../back_page_button.dart';
import '../page_list_tile.dart';

class Page058 extends StatelessWidget {
  const Page058({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: const [
            PageListTile(
              title: 'AnimatedCrossFadeSample',
              page: AnimatedCrossFadeSample(),
            ),
            PageListTile(
              title: 'AnimatedCrossFadeExampleWithBuilder',
              page: AnimatedCrossFadeExampleWithBuilder(),
            ),
          ],
        ),
        floatingActionButton: const BackPageButton(),
      ),
    );
  }
}

class AnimatedCrossFadeSample extends StatefulWidget {
  const AnimatedCrossFadeSample({Key? key}) : super(key: key);

  @override
  State<AnimatedCrossFadeSample> createState() =>
      _AnimatedCrossFadeSampleState();
}

class _AnimatedCrossFadeSampleState extends State<AnimatedCrossFadeSample> {
  bool _first = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AnimatedCrossFade(
                duration: const Duration(seconds: 1),
                firstChild: const FlutterLogo(
                    style: FlutterLogoStyle.horizontal, size: 100.0),
                secondChild: const FlutterLogo(
                    style: FlutterLogoStyle.stacked, size: 100.0),
                crossFadeState: _first
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
              ),
              ElevatedButton(
                onPressed: () => {
                  setState(
                    () => _first = !_first,
                  ),
                },
                child: const Text('change'),
              ),
            ],
          ),
        ),
        floatingActionButton: const BackPageButton(),
      ),
    );
  }
}

class AnimatedCrossFadeExampleWithBuilder extends StatefulWidget {
  const AnimatedCrossFadeExampleWithBuilder({Key? key}) : super(key: key);

  @override
  AnimatedCrossFadeExampleWithBuilderState createState() =>
      AnimatedCrossFadeExampleWithBuilderState();
}

class AnimatedCrossFadeExampleWithBuilderState
    extends State<AnimatedCrossFadeExampleWithBuilder> {
  CrossFadeState _crossFadeState = CrossFadeState.showFirst;

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        _crossFadeState = CrossFadeState.showSecond;
      });
    });

    Future.delayed(const Duration(seconds: 5), () {
      setState(() {
        _crossFadeState = CrossFadeState.showFirst;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: AnimatedCrossFade(
            crossFadeState: _crossFadeState,
            duration: const Duration(seconds: 2),
            reverseDuration: const Duration(seconds: 3),
            firstCurve: Curves.bounceInOut,
            secondCurve: Curves.easeInBack,
            firstChild: const Icon(Icons.text_rotate_up, size: 100),
            secondChild: const Icon(Icons.text_rotate_vertical, size: 200),
            layoutBuilder: (Widget topChild, Key topChildKey,
                Widget bottomChild, Key bottomChildKey) {
              return Stack(
                clipBehavior: Clip.none,
                children: <Widget>[
                  Positioned(
                    key: bottomChildKey,
                    left: 100.0,
                    top: 100.0,
                    child: bottomChild,
                  ),
                  Positioned(
                    key: topChildKey,
                    child: topChild,
                  ),
                ],
              );
            },
          ),
        ),
        floatingActionButton: const BackPageButton(),
      ),
    );
  }
}
