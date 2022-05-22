import 'package:flutter/material.dart';
import 'pages/page001.dart';
import 'pages/page002.dart';
import 'pages/page003.dart';
import 'pages/page004.dart';
import 'pages/page005.dart';
import 'pages/page006.dart';
import 'pages/page007.dart';
import 'pages/page008.dart';
import 'pages/page009.dart';
import 'pages/page010.dart';
import 'pages/page011.dart';
import 'pages/page012.dart';
import 'pages/page013.dart';
import 'pages/page014.dart';

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
  WidgetPage(title: 'Opacity', widget: const Page005()),
  WidgetPage(title: 'FutureBuilder', widget: const Page006()),
  WidgetPage(title: 'FadeTransition', widget: const Page007()),
  WidgetPage(title: 'FloatingActionButton', widget: const Page008()),
  WidgetPage(title: 'PageView', widget: const Page009()),
  WidgetPage(title: 'Table', widget: const Page010()),
  WidgetPage(title: 'SliverAppBar', widget: const Page011()),
  WidgetPage(title: 'SliverList & SliverGrid', widget: const Page012()),
  WidgetPage(title: 'FadeInImage', widget: const Page013()),
  WidgetPage(title: 'StreamBuilder', widget: const Page014()),
];
