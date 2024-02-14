import 'dart:ui';

import 'package:flutter/material.dart';
import 'base_background.dart';
import 'package:powerup/style.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      const BaseBackground(),
      Center(
          child: SizedBox(
              width: 584,
              height: 792,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 30.0, sigmaY: 30.0),
                      child: Container(color: cardColor.withOpacity(0.72)))))),
      Center(
          child: SizedBox(
              width: 400,
              height: 608,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Daftar Sekarang', style: heading),
                    Padding(
                      padding: const EdgeInsets.only(top: 32.0, bottom: 8.0),
                      child: Text('Email', style: heading3),
                    ),
                    TextFormField(),
                    Padding(
                      padding: const EdgeInsets.only(top: 28, bottom: 8.0),
                      child: Text('Nama', style: heading3),
                    ),
                    TextFormField(),
                    Padding(
                      padding: const EdgeInsets.only(top: 28, bottom: 8.0),
                      child: Text('Kata Sandi', style: heading3),
                    ),
                    TextFormField(),
                    Padding(
                      padding: const EdgeInsets.only(top: 28, bottom: 8.0),
                      child: Text('Konfirmasi Kata Sandi', style: heading3),
                    ),
                    TextFormField(),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 32.0),
                      child: ElevatedButton(
                          onPressed: null,
                          child: Text('Daftar', style: buttonText)),
                    ),
                    Text('Sudah punya akun?', style: heading4),
                    Text('Masuk', style: linkText4)
                  ])))
    ]);
  }
}
