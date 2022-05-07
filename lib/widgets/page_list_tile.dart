import 'package:flutter/material.dart';

class PageListTile extends StatelessWidget {
  const PageListTile({
    Key? key,
    required this.title,
    required this.page,
  }) : super(key: key);

  final String title;
  final Widget page;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) => page,
          ),
        );
      },
    );
  }
}
