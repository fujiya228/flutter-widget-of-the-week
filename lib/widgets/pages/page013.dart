import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import '../back_page_button.dart';
import '../page_list_tile.dart';

class Page013 extends StatefulWidget {
  const Page013({
    Key? key,
  }) : super(key: key);

  @override
  State<Page013> createState() => _Page013State();
}

class _Page013State extends State<Page013> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Center(
                child: Image.network(
                    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/$count.png'),
              ),
            ),
            Expanded(
              child: Center(
                child: FadeInImage.assetNetwork(
                    placeholder: 'images/poke-egg.png',
                    image:
                        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/$count.png'),
              ),
            ),
            Expanded(
              child: Center(
                child: FadeInImage.memoryNetwork(
                    placeholder: kTransparentImage,
                    image:
                        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/$count.png'),
              ),
            )
          ],
        ),
        floatingActionButton: const BackPageButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        bottomNavigationBar: BottomAppBar(
          color: Colors.blue,
          shape: const CircularNotchedRectangle(),
          child: Container(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
                icon: const Icon(Icons.next_plan_outlined),
                iconSize: 32,
                onPressed: () {
                  setState(() => count++);
                }),
          ),
        ),
      ),
    );
  }
}
