import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:gestionuh/src/data/local.dart';

import 'src/data/api/api.dart';

final di = GetIt.instance;

Future<void> init() async {
  di.registerSingleton<GestionApi>(GestionApi());

  final sharedPrefs = await SharedPreferences.getInstance();
  di.registerSingleton<SharedPreferences>(sharedPrefs);

  di.registerLazySingleton<ILocalStorage>(
    () => LocalStorage(
      prefs: di(),
    ),
  );
}
