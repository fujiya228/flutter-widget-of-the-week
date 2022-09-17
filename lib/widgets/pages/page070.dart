import 'package:flutter/material.dart';
import '../back_page_button.dart';

class Page070 extends StatefulWidget {
  const Page070({
    Key? key,
  }) : super(key: key);

  @override
  State<Page070> createState() => _Page070State();
}

class _Page070State extends State<Page070> {
  String _notificationType = 'Null';
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            NotificationListener<ScrollNotification>(
              child: SingleChildScrollView(
                controller: _scrollController,
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(8),
                      height: 300,
                      color: Colors.amber,
                    ),
                    Container(
                      margin: const EdgeInsets.all(8),
                      height: 300,
                      color: Colors.amber,
                    ),
                    Container(
                      margin: const EdgeInsets.all(8),
                      height: 300,
                      color: Colors.amber,
                    ),
                    Container(
                      margin: const EdgeInsets.all(8),
                      height: 300,
                      color: Colors.amber,
                    ),
                    Container(
                      margin: const EdgeInsets.all(8),
                      height: 300,
                      color: Colors.amber,
                    ),
                  ],
                ),
              ),
              onNotification: (notification) {
                print(notification.runtimeType.toString());
                setState(() {
                  _notificationType = notification.runtimeType.toString();
                });
                return true;
              },
            ),
            Center(
              child: DefaultTextStyle(
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
                child: Text(
                  _notificationType,
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: const BackPageButton(),
      ),
    );
  }
}
