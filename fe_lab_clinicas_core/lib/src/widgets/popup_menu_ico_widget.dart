import 'package:flutter/material.dart';

import '../theme/fe_lab_clinicas_theme.dart';

class PopupMenuIcoWidget extends StatelessWidget {
  const PopupMenuIcoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 64),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: FeLabClinicasTheme.orangeColor,
            width: 2,
          ),
        ),
        child: const Icon(
          Icons.more_horiz_rounded,
          color: FeLabClinicasTheme.orangeColor,
        ),
      ),
    );
  }
}
