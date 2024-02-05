import 'dart:async';
import 'dart:developer';

import 'package:fe_lab_clinicas_core/fe_lab_clinicas_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';

import 'src/bindings/lab_clinicas_application_binding.dart';
import 'src/modules/auth/auth_module.dart';
import 'src/modules/home/home_module.dart';
import 'src/pages/splash_page/splash_page.dart';

void main() {
  runZonedGuarded(() {
    runApp(const LabClinicasSelfServiceApp());
  }, (error, stack) {
    log('Erro não tratado', error: error, stackTrace: stack);
    throw error;
  });
}

class LabClinicasSelfServiceApp extends StatelessWidget {
  const LabClinicasSelfServiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FeLabClinicasCoreConfig(
      title: 'Lab Clinicas Auto Atendimento',
      binding: LabClinicasApplicationBinding(),
      pagesBuilders: [
        FlutterGetItPageBuilder(
          page: (_) => const SplashPage(),
          path: '/',
        ),
      ],
      modules: [
        AuthModule(),
        HomeModule(),
      ],
    );
  }
}
