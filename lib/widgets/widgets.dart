import 'package:flutter/material.dart';
import 'pages/page001.dart';

class WidgetPage {
  WidgetPage({
    required this.title,
    required this.widget,
  });

  final String title;
  final Widget widget;
}

final widgetPages = <WidgetPage>[
  WidgetPage(title: 'SafeArea', widget: const Page001())
];
