import 'package:flutter/material.dart';
import '../back_page_button.dart';
import '../page_list_tile.dart';

class Page005 extends StatelessWidget {
  const Page005({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: const [
            PageListTile(
              title: 'Sample',
              page: Sample(),
            ),
            PageListTile(
              title: 'ColorOpacitySample',
              page: ColorOpacitySample(),
            ),
          ],
        ),
        floatingActionButton: const BackPageButton(),
      ),
    );
  }
}

class Sample extends StatelessWidget {
  const Sample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Container(
                color: Colors.blue,
                height: 50,
                width: 50,
              ),
              Opacity(
                opacity: 0.75,
                child: Container(
                  color: Colors.blue,
                  height: 50,
                  width: 50,
                ),
              ),
              Opacity(
                opacity: 0.5,
                child: Container(
                  color: Colors.blue,
                  height: 50,
                  width: 50,
                ),
              ),
              Opacity(
                opacity: 0.25,
                child: Container(
                  color: Colors.blue,
                  height: 50,
                  width: 50,
                ),
              ),
              Opacity(
                opacity: 0.1,
                child: Container(
                  color: Colors.blue,
                  height: 50,
                  width: 50,
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

class ColorOpacitySample extends StatelessWidget {
  const ColorOpacitySample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Center(
            child: Image.network(
              'https://raw.githubusercontent.com/flutter/assets-for-api-docs/master/packages/diagrams/assets/blend_mode_destination.jpeg',
              color: const Color.fromRGBO(255, 255, 255, 1),
              colorBlendMode: BlendMode.modulate,
            ),
          ),
          Center(
            child: Image.network(
              'https://raw.githubusercontent.com/flutter/assets-for-api-docs/master/packages/diagrams/assets/blend_mode_destination.jpeg',
              color: const Color.fromRGBO(255, 255, 255, 0.5),
              colorBlendMode: BlendMode.modulate,
            ),
          ),
          Center(
            child: Image.network(
              'https://raw.githubusercontent.com/flutter/assets-for-api-docs/master/packages/diagrams/assets/blend_mode_destination.jpeg',
              color: const Color.fromRGBO(255, 255, 255, 0.1),
              colorBlendMode: BlendMode.modulate,
            ),
          ),
        ],
      ),
      floatingActionButton: const BackPageButton(),
    );
  }
}
