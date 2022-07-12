import 'package:flutter/material.dart';
import '../back_page_button.dart';
import '../page_list_tile.dart';

class Page039 extends StatelessWidget {
  const Page039({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: const [
            PageListTile(
              title: 'WithLimitedBox',
              page: WithLimitedBox(),
            ),
            PageListTile(
              title: 'NotWithLimitedBox',
              page: NotWithLimitedBox(),
            ),
          ],
        ),
        floatingActionButton: const BackPageButton(),
      ),
    );
  }
}

class WithLimitedBox extends StatelessWidget {
  const WithLimitedBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            LimitedBox(
              maxHeight: 100,
              child: Container(
                color: Colors.amber,
              ),
            ),
            LimitedBox(
              maxHeight: 100,
              child: Container(
                color: Colors.blue,
              ),
            ),
            LimitedBox(
              maxHeight: 100,
              child: Container(
                color: Colors.amber,
              ),
            ),
            LimitedBox(
              maxHeight: 100,
              child: Container(
                color: Colors.blue,
              ),
            ),
            LimitedBox(
              maxHeight: 100,
              child: Container(
                color: Colors.amber,
              ),
            ),
            LimitedBox(
              maxHeight: 100,
              child: Container(
                color: Colors.blue,
              ),
            ),
            LimitedBox(
              maxHeight: 100,
              child: Container(
                color: Colors.amber,
              ),
            ),
            LimitedBox(
              maxHeight: 100,
              child: Container(
                color: Colors.blue,
              ),
            ),
          ],
        ),
        floatingActionButton: const BackPageButton(),
      ),
    );
  }
}

class NotWithLimitedBox extends StatelessWidget {
  const NotWithLimitedBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Container(
              color: Colors.amber,
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.amber,
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.amber,
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.amber,
            ),
            Container(
              color: Colors.blue,
            ),
          ],
        ),
        floatingActionButton: const BackPageButton(),
      ),
    );
  }
}
