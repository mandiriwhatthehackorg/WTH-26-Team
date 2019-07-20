import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mandiri_wth/screens/landing_page.dart';
import 'package:mandiri_wth/stores/settings.dart';

class ThemeApp extends StatelessWidget {

  final Settings settings;
  ThemeApp(this.settings, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        var themeData = ThemeData(
          brightness: settings.useDarkMode == true ? Brightness.dark : Brightness.light,
          primaryColor: Color(0xffffb700),
        );
        return MaterialApp(
          title: 'Mandiri App',
          theme: themeData,
          home: LandingPage(),
        );
      },
    );
  }
}