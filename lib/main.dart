import 'package:flutter/material.dart';
import 'package:mandiri_wth/data/api_servicing.dart';
import 'package:mandiri_wth/services/preferences_service.dart';
import 'package:mandiri_wth/stores/customer.dart';
import 'package:mandiri_wth/stores/settings.dart';
import 'package:mandiri_wth/theme_app.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:logging/logging.dart';

Future main() async {
  _setupLogging();
  var sharedPreferences = await SharedPreferences.getInstance();
  runApp(MyApp(PreferencesService(sharedPreferences)));
}

void _setupLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((rec) {
    print('${rec.level.name}: ${rec.time}: ${rec.message}');
  });
}

class MyApp extends StatelessWidget {
  final PreferencesService _preferencesService;

  const MyApp(this._preferencesService);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          builder: (_) => ApiServicing.create(),
          dispose: (_, ApiServicing service) => service.client.dispose(),
        ),
        Provider<PreferencesService>(
          builder: (_) => _preferencesService,
        ),
        Provider<Settings>(
          builder: (_) => Settings(_preferencesService),
        ),
        Provider<Customer>(
          builder: (_) => Customer(),
        ),
      ],
      child: Consumer<Settings>(
        builder: (context, value, _) => ThemeApp(value),
      ),
    );
  }
}
