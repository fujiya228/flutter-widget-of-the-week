import 'package:flutter/material.dart';
import '../back_page_button.dart';

class Page006 extends StatelessWidget {
  const Page006({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: MyStatefulWidget(),
        floatingActionButton: BackPageButton(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int duration = 1;
  final List<Widget> awaitingWidgets = const <Widget>[
    SizedBox(
      width: 60,
      height: 60,
      child: CircularProgressIndicator(),
    ),
    Padding(
      padding: EdgeInsets.only(top: 16),
      child: Text('Awaiting result...'),
    )
  ];

  Future<String> _calculation(int seconds) async {
    await Future.delayed(Duration(seconds: seconds));
    if (seconds == 2) {
      throw 'ErrorText';
    }
    return 'Data Loaded';
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.headline2!,
      textAlign: TextAlign.center,
      child: FutureBuilder<String>(
        future: _calculation(duration),
        builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
          List<Widget> children;

          if (snapshot.connectionState != ConnectionState.done) {
            children = awaitingWidgets;
          } else if (snapshot.hasData) {
            children = <Widget>[
              const Icon(
                Icons.check_circle_outline,
                color: Colors.green,
                size: 60,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text('Result: ${snapshot.data}'),
              )
            ];
          } else if (snapshot.hasError) {
            children = <Widget>[
              const Icon(
                Icons.error_outline,
                color: Colors.red,
                size: 60,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text('Error: ${snapshot.error}'),
              )
            ];
          } else {
            children = awaitingWidgets;
          }
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...children,
                ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () => {
                        setState(
                          () => duration = 1,
                        ),
                      },
                      child: const Text('Reload'),
                    ),
                    ElevatedButton(
                      onPressed: () => {
                        setState(
                          () => duration = 2,
                        ),
                      },
                      child: const Text('Reload with error'),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
