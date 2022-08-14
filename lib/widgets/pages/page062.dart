import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../back_page_button.dart';

class Page062 extends StatelessWidget {
  const Page062({
    Key? key,
  }) : super(key: key);

  final String title = 'App title';

  void _showActionSheet(BuildContext context) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => CupertinoActionSheet(
        title: const Text('Title'),
        message: const Text('Message'),
        actions: <CupertinoActionSheetAction>[
          CupertinoActionSheetAction(
            isDefaultAction: true,
            onPressed: () {
              Navigator.of(context).pop('Defalut Action');
            },
            child: const Text('Default Action'),
          ),
          CupertinoActionSheetAction(
            onPressed: () {
              Navigator.of(context).pop('Action');
            },
            child: const Text('Action'),
          ),
          CupertinoActionSheetAction(
            isDestructiveAction: true,
            onPressed: () {
              Navigator.of(context).pop('Destructive Action');
            },
            child: const Text('Destructive Action'),
          ),
        ],
        cancelButton: CupertinoActionSheetAction(
          isDestructiveAction: true,
          onPressed: () {
            Navigator.of(context).pop('Cancel');
          },
          child: const Text('Cancel'),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CupertinoPageScaffold(
          child: Center(
            child: CupertinoButton(
              onPressed: () => _showActionSheet(context),
              child: const Text('CupertinoActionSheet'),
            ),
          ),
        ),
        floatingActionButton: const BackPageButton(),
      ),
    );
  }
}
