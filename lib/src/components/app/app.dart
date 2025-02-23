library;

import 'package:flutter/material.dart' as material;
import 'package:flutter/widgets.dart';
import '../theme/theme_data.dart';

class AntApp extends StatelessWidget {
  const AntApp(
      {super.key,
      this.title,
      this.theme,
      this.home,
      this.routes = const <String, WidgetBuilder>{}});

  final String? title;
  final AntThemeData? theme;
  final Widget? home;
  final Map<String, WidgetBuilder> routes;

  @override
  Widget build(BuildContext context) {
    return material.MaterialApp(
      title: title,
      theme: theme?.toMaterialThemeData(),
      home: home,
      routes: routes,
    );
  }
}
