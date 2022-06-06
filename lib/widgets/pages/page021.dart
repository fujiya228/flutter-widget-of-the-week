import 'package:flutter/material.dart';
import '../back_page_button.dart';

class Page021 extends StatelessWidget {
  const Page021({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.maxWidth > 600) {
              return _buildWideContainers();
            } else {
              return _buildNormalContainer();
            }
          },
        ),
        floatingActionButton: const BackPageButton(),
      ),
    );
  }
}

Widget _buildNormalContainer() {
  return Center(
    child: Container(
      height: 100.0,
      width: 100.0,
      color: Colors.red,
    ),
  );
}

Widget _buildWideContainers() {
  return Center(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          height: 100.0,
          width: 100.0,
          color: Colors.red,
        ),
        Container(
          height: 100.0,
          width: 100.0,
          color: Colors.yellow,
        ),
      ],
    ),
  );
}
