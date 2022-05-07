import 'package:flutter/material.dart';
import '../back_page_button.dart';
import '../page_list_tile.dart';

class Page001 extends StatelessWidget {
  const Page001({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: const [
            PageListTile(
              title: 'WrapWithSafeArea',
              page: WrapWithSafeArea(),
            ),
            PageListTile(
              title: 'NotWrapWithSafeArea',
              page: NotWrapWithSafeArea(),
            ),
          ],
        ),
        floatingActionButton: const BackPageButton(),
      ),
    );
  }
}

class WrapWithSafeArea extends StatelessWidget {
  const WrapWithSafeArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: List.generate(
            20,
            (idx) => ListTile(title: Text('ListTile $idx')),
          ),
        ),
        floatingActionButton: const BackPageButton(),
      ),
    );
  }
}

class NotWrapWithSafeArea extends StatelessWidget {
  const NotWrapWithSafeArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: List.generate(
          20,
          (idx) => ListTile(title: Text('ListTile $idx')),
        ),
      ),
      floatingActionButton: const BackPageButton(),
    );
  }
}
