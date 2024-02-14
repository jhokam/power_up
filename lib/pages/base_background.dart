import 'package:flutter/material.dart';

class BaseBackground extends StatelessWidget {
  const BaseBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
          decoration: const BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                  image: AssetImage('assets/images/Iso.png'),
                  fit: BoxFit.cover))),
      Container(color: Colors.black.withOpacity(0.8))
    ]);
  }
}
