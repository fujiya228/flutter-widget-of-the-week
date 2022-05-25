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
import 'pages/page015.dart';
import 'pages/page016.dart';
import 'pages/page017.dart';

class WidgetPage {
  WidgetPage({
    required this.title,
    required this.widget,
  });

  final String title;
  final Widget widget;
}

final widgetPages = <WidgetPage>[
  WidgetPage(title: 'No. 017 Hero', widget: const Page017()),
  WidgetPage(title: 'No. 016 ClipRRect', widget: const Page016()),
  WidgetPage(title: 'No. 015 InheritedModel', widget: const Page015()),
  WidgetPage(title: 'No. 014 StreamBuilder', widget: const Page014()),
  WidgetPage(title: 'No. 013 FadeInImage', widget: const Page013()),
  WidgetPage(title: 'No. 012 SliverList & SliverGrid', widget: const Page012()),
  WidgetPage(title: 'No. 011 SliverAppBar', widget: const Page011()),
  WidgetPage(title: 'No. 010 Table', widget: const Page010()),
  WidgetPage(title: 'No. 009 PageView', widget: const Page009()),
  WidgetPage(title: 'No. 008 FloatingActionButton', widget: const Page008()),
  WidgetPage(title: 'No. 007 FadeTransition', widget: const Page007()),
  WidgetPage(title: 'No. 006 FutureBuilder', widget: const Page006()),
  WidgetPage(title: 'No. 005 Opacity', widget: const Page005()),
  WidgetPage(title: 'No. 004 AnimatedContainer', widget: const Page004()),
  WidgetPage(title: 'No. 003 Wrap', widget: const Page003()),
  WidgetPage(title: 'No. 002 Expanded', widget: const Page002()),
  WidgetPage(title: 'No. 001 SafeArea', widget: const Page001()),
];
