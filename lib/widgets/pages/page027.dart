import 'package:flutter/material.dart';
import 'dart:math' as math;
import '../back_page_button.dart';
import '../page_list_tile.dart';

class Page027 extends StatelessWidget {
  const Page027({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: const [
            PageListTile(
              title: 'AnimatedBuilderSample',
              page: AnimatedBuilderSample(),
            ),
            PageListTile(
              title: 'ImproveRebuildsPerformance',
              page: ImproveRebuildsPerformance(),
            ),
          ],
        ),
        floatingActionButton: const BackPageButton(),
      ),
    );
  }
}

class AnimatedBuilderSample extends StatefulWidget {
  const AnimatedBuilderSample({Key? key}) : super(key: key);

  @override
  State<AnimatedBuilderSample> createState() => _AnimatedBuilderSampleState();
}

class _AnimatedBuilderSampleState extends State<AnimatedBuilderSample>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 10),
    vsync: this,
  )..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: AnimatedBuilder(
          animation: _controller,
          child: Center(
            child: Container(
              width: 400.0,
              height: 400.0,
              color: Colors.green,
              child: const Center(
                child: Text('Whee!'),
              ),
            ),
          ),
          builder: (BuildContext context, Widget? child) {
            return Transform.rotate(
              angle: _controller.value * 2.0 * math.pi,
              child: child,
            );
          },
        ),
        floatingActionButton: const BackPageButton(),
      ),
    );
  }
}

class CounterBody extends StatelessWidget {
  const CounterBody({Key? key, required this.counterValueNotifier})
      : super(key: key);

  final ValueNotifier<int> counterValueNotifier;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text('Current counter value:'),
          AnimatedBuilder(
            animation: counterValueNotifier,
            builder: (BuildContext context, Widget? child) {
              return Text('${counterValueNotifier.value}');
            },
          ),
        ],
      ),
    );
  }
}

class ImproveRebuildsPerformance extends StatefulWidget {
  const ImproveRebuildsPerformance({Key? key}) : super(key: key);

  @override
  State<ImproveRebuildsPerformance> createState() =>
      _ImproveRebuildsPerformanceState();
}

class _ImproveRebuildsPerformanceState
    extends State<ImproveRebuildsPerformance> {
  final ValueNotifier<int> _counter = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CounterBody(counterValueNotifier: _counter),
            ElevatedButton(
              onPressed: () => _counter.value++,
              child: const Icon(Icons.add),
            ),
          ],
        ),
        floatingActionButton: const BackPageButton(),
      ),
    );
  }
}
