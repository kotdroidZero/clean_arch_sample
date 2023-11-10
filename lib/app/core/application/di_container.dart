import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../local/shared_pref_helper.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // shared prefrences
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => SharedPrefHelper(sharedPreferences));
}
