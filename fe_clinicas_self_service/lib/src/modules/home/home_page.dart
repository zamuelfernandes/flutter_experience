import 'package:fe_lab_clinicas_core/fe_lab_clinicas_core.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeOf = MediaQuery.sizeOf(context);

    return Scaffold(
      appBar: FeLabClinicasAppBar(
        actions: [
          PopupMenuButton<int>(
            child: const PopupMenuIcoWidget(),
            itemBuilder: (context) {
              return [
                const PopupMenuItem(
                  value: 1,
                  child: Text('Item 1'),
                ),
                const PopupMenuItem(
                  value: 2,
                  child: Text('Item 2'),
                ),
              ];
            },
          ),
        ],
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: Container(
          padding: const EdgeInsets.all(40),
          margin: const EdgeInsets.only(top: 112),
          width: sizeOf.width * .8,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: FeLabClinicasTheme.orangeColor,
              width: 1,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 4,
                offset: const Offset(0, 1),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Bem Vindo!',
                style: FeLabClinicasTheme.titleStyle,
              ),
              const SizedBox(height: 32),
              SizedBox(
                width: sizeOf.width * .8,
                height: 48,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('INICIAR TERMINAL'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
