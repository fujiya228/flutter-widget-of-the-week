import 'package:flutter/material.dart';
import 'pages/page001.dart';
import 'pages/page002.dart';
import 'pages/page003.dart';
import 'pages/page004.dart';

class WidgetPage {
  WidgetPage({
    required this.title,
    required this.widget,
  });

  final String title;
  final Widget widget;
}

final widgetPages = <WidgetPage>[
  WidgetPage(title: 'SafeArea', widget: const Page001()),
  WidgetPage(title: 'Expanded', widget: const Page002()),
  WidgetPage(title: 'Wrap', widget: const Page003()),
  WidgetPage(title: 'AnimatedContainer', widget: const Page004()),
];
