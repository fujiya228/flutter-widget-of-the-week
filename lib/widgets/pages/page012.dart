import 'package:flutter/material.dart';
import '../back_page_button.dart';
import '../page_list_tile.dart';

class Page012 extends StatelessWidget {
  const Page012({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: const [
            PageListTile(
              title: 'ScrollSeparately',
              page: ScrollSeparately(),
            ),
            PageListTile(
              title: 'ScrollTogether',
              page: ScrollTogether(),
            ),
          ],
        ),
        floatingActionButton: const BackPageButton(),
      ),
    );
  }
}

class ScrollSeparately extends StatelessWidget {
  const ScrollSeparately({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 300,
              child: ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    alignment: Alignment.center,
                    height: 100,
                    color: Colors.teal[100 * (index % 9)],
                    child: Text('list item $index', textScaleFactor: 2),
                  );
                },
                itemCount: 20,
              ),
            ),
            SizedBox(
              height: 300,
              child: GridView.count(
                crossAxisCount: 2,
                children: List.generate(20, (index) {
                  return Container(
                    alignment: Alignment.center,
                    color: Colors.teal[100 * (index % 9)],
                    child: Text('grid item $index', textScaleFactor: 2),
                  );
                }),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: const BackPageButton(),
    );
  }
}

class ScrollTogether extends StatelessWidget {
  const ScrollTogether({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  height: 100,
                  color: Colors.teal[100 * (index % 9)],
                  child: Text('list item $index', textScaleFactor: 2),
                );
              },
              childCount: 20,
            ),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.teal[100 * (index % 9)],
                  child: Text('grid item $index', textScaleFactor: 2),
                );
              },
              childCount: 20,
            ),
          ),
        ],
      ),
      floatingActionButton: const BackPageButton(),
    );
  }
}
