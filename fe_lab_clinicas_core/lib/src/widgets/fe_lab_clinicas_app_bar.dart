import 'package:flutter/material.dart';

class FeLabClinicasAppBar extends AppBar {
  FeLabClinicasAppBar({
    super.key,
    List<Widget>? actions,
  }) : super(
          toolbarHeight: 72,
          backgroundColor: Colors.transparent,
          flexibleSpace: Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  blurRadius: 4,
                  offset: const Offset(0, 1),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 64),
              child: Image.asset('assets/images/logo_horizontal.png'),
            ),
          ),
          actions: actions,
        );
}
