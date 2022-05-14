import 'package:flutter/material.dart';
import '../back_page_button.dart';
import '../page_list_tile.dart';

class Page008 extends StatelessWidget {
  const Page008({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: const [
            PageListTile(
              title: 'Nomal',
              page: Nomal(),
            ),
            PageListTile(
              title: 'WithLabel',
              page: WithLabel(),
            ),
            PageListTile(
              title: 'LocationCenterDocked',
              page: LocationCenterDocked(),
            ),
          ],
        ),
        floatingActionButton: const BackPageButton(),
      ),
    );
  }
}

class Nomal extends StatelessWidget {
  const Nomal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.pop(context),
          child: const Icon(Icons.keyboard_double_arrow_left_rounded),
        ),
      ),
    );
  }
}

class WithLabel extends StatelessWidget {
  const WithLabel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () => Navigator.pop(context),
          label: const Text('Back'),
          icon: const Icon(Icons.keyboard_double_arrow_left_rounded),
          backgroundColor: Colors.pink,
        ),
      ),
    );
  }
}

class LocationCenterDocked extends StatelessWidget {
  const LocationCenterDocked({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.pop(context),
          child: const Icon(Icons.keyboard_double_arrow_left_rounded),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
