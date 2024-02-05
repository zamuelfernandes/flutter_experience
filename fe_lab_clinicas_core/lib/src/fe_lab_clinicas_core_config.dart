import 'package:asyncstate/asyncstate.dart';
import 'package:fe_lab_clinicas_core/src/theme/fe_lab_clinicas_theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';

import 'loader/lab_clinicas_loader.dart';

class FeLabClinicasCoreConfig extends StatelessWidget {
  const FeLabClinicasCoreConfig({
    super.key,
    this.binding,
    this.pages,
    this.pagesBuilders,
    this.modules,
    required this.title,
  });

  final ApplicationBindings? binding;
  final List<FlutterGetItPageRouter>? pages;
  final List<FlutterGetItPageBuilder>? pagesBuilders;
  final List<FlutterGetItModule>? modules;
  final String title;

  @override
  Widget build(BuildContext context) {
    return FlutterGetIt(
      debugMode: kDebugMode,
      bindings: binding,
      pages: [...pages ?? [], ...pagesBuilders ?? []],
      modules: modules,
      builder: (context, routes, flutterGetItNavObserver) {
        return AsyncStateBuilder(
          loader: LabClinicasLoader(),
          builder: (navigatorObserver) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: FeLabClinicasTheme.lightTheme,
              darkTheme: FeLabClinicasTheme.darkTheme,
              navigatorObservers: [
                flutterGetItNavObserver,
                navigatorObserver,
              ],
              title: title,
              routes: routes,
            );
          },
        );
      },
    );
  }
}
