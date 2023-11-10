import 'package:flutter/material.dart';

import 'core/configs/app_routes.dart';

/// taking this as Global for having multi navigator setup
final GlobalKey<NavigatorState> navigatorMainKey = GlobalKey<NavigatorState>();

class SampleApplication extends StatelessWidget {
  const SampleApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        /// Just to close keyboard on tappping anywhere on screen other than TextField
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: MaterialApp(
        navigatorKey: navigatorMainKey,
        debugShowCheckedModeBanner: false,
        initialRoute: AppRoutes.splashPage,
        onGenerateRoute: RoutesHelper.onGeneratingRoutes,
      ),
    );
    // return MultiBlocProvider(
    //   providers: const [
    //     // BlocProvider(
    //     //   create: (context) => ;Bloc(),
    //     // ),
    //     // BlocProvider(
    //     //   create: (context) => SubjectBloc(),
    //     // ),
    //   ],
    //   child: GestureDetector(
    //     onTap: () {
    //       /// Just to close keyboard on tappping anywhere on screen other than TextField
    //       FocusScope.of(context).requestFocus(FocusNode());
    //     },
    //     child: MaterialApp(
    //       navigatorKey: navigatorMainKey,
    //       initialRoute: AppRoutes.splashPage,
    //       onGenerateRoute: RoutesHelper.onGeneratingRoutes,
    //     ),
    //   ),
    // );
  }
}
