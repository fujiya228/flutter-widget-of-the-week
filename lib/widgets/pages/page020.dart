import 'package:flutter/material.dart';
import '../back_page_button.dart';
import '../page_list_tile.dart';

class Page020 extends StatelessWidget {
  const Page020({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: const [
            PageListTile(
              title: 'None',
              page: None(),
            ),
            PageListTile(
              title: 'Contain',
              page: Contain(),
            ),
            PageListTile(
              title: 'Fill',
              page: Fill(),
            ),
            PageListTile(
              title: 'FitHeight',
              page: FitHeight(),
            ),
            PageListTile(
              title: 'FitWidth',
              page: FitWidth(),
            ),
            PageListTile(
              title: 'ScaleDown',
              page: ScaleDown(),
            ),
          ],
        ),
        floatingActionButton: const BackPageButton(),
      ),
    );
  }
}

class None extends StatelessWidget {
  const None({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            height: 400,
            width: 300,
            color: Colors.red,
            child: FittedBox(
              fit: BoxFit.none,
              child: Image.network(
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
            ),
          ),
        ),
        floatingActionButton: const BackPageButton(),
      ),
    );
  }
}

class Contain extends StatelessWidget {
  const Contain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            height: 400,
            width: 300,
            color: Colors.red,
            child: FittedBox(
              fit: BoxFit.contain,
              child: Image.network(
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
            ),
          ),
        ),
        floatingActionButton: const BackPageButton(),
      ),
    );
  }
}

class Cover extends StatelessWidget {
  const Cover({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            height: 400,
            width: 300,
            color: Colors.red,
            child: FittedBox(
              fit: BoxFit.cover,
              child: Image.network(
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
            ),
          ),
        ),
        floatingActionButton: const BackPageButton(),
      ),
    );
  }
}

class Fill extends StatelessWidget {
  const Fill({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            height: 400,
            width: 300,
            color: Colors.red,
            child: FittedBox(
              fit: BoxFit.fill,
              child: Image.network(
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
            ),
          ),
        ),
        floatingActionButton: const BackPageButton(),
      ),
    );
  }
}

class FitHeight extends StatelessWidget {
  const FitHeight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            height: 400,
            width: 300,
            color: Colors.red,
            child: FittedBox(
              fit: BoxFit.fitHeight,
              child: Image.network(
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
            ),
          ),
        ),
        floatingActionButton: const BackPageButton(),
      ),
    );
  }
}

class FitWidth extends StatelessWidget {
  const FitWidth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            height: 400,
            width: 300,
            color: Colors.red,
            child: FittedBox(
              fit: BoxFit.fitWidth,
              child: Image.network(
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
            ),
          ),
        ),
        floatingActionButton: const BackPageButton(),
      ),
    );
  }
}

class ScaleDown extends StatelessWidget {
  const ScaleDown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            height: 400,
            width: 300,
            color: Colors.red,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Image.network(
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
            ),
          ),
        ),
        floatingActionButton: const BackPageButton(),
      ),
    );
  }
}
