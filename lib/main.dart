import 'package:base_arch/app/core/application/app_bloc_observer.dart';
import 'package:base_arch/app/core/application/di_container.dart' as di;
import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app/sample_aaplication.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// Initialize your firebase here
  ///

  /// Dependency Injector Initialization
  await di.init();

  /// for localization
  await EasyLocalization.ensureInitialized();

  /// App Bloc Observer to observe it's state
  Bloc.observer = AppBlocObserver();

  /// Set only Portrait Mode
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) {
    runApp(const SampleApplication());
  });
}
