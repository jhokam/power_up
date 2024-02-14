import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'base_background.dart';
import 'package:powerup/style.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  // Check if showing password or not (if true = hide else = show)
  // _isObscure1 for password field
  // _isObscure2 for confirm password field
  bool _isObscure1 = true;
  bool _isObscure2 = true;

  // Check if the button is being hovered or not
  bool _isHovering = false;

  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _nameFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();
  final FocusNode _confirmPasswordFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        const BaseBackground(),
        Center(
            child: SizedBox(
                width: 584,
                height: 792,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 30.0, sigmaY: 30.0),
                        child:
                            Container(color: cardColor.withOpacity(0.72)))))),
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
                      TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          style: heading3,
                          focusNode: _emailFocusNode,
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: const BorderSide(
                                      width: 2.0, color: primaryColor)),
                              contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      width: 2.0, color: secondaryColor),
                                  borderRadius: BorderRadius.circular(8.0)),
                              hintText: 'Email Anda di sini',
                              hintStyle: disableText)),
                      Padding(
                        padding: const EdgeInsets.only(top: 28, bottom: 8.0),
                        child: Text('Nama', style: heading3),
                      ),
                      TextFormField(
                          keyboardType: TextInputType.name,
                          style: heading3,
                          focusNode: _nameFocusNode,
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: const BorderSide(
                                      width: 2.0, color: primaryColor)),
                              contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      width: 2.0, color: secondaryColor),
                                  borderRadius: BorderRadius.circular(8.0)),
                              hintText: 'Nama Anda di sini',
                              hintStyle: disableText)),
                      Padding(
                        padding: const EdgeInsets.only(top: 28, bottom: 8.0),
                        child: Text('Kata Sandi', style: heading3),
                      ),
                      TextFormField(
                          enableSuggestions: false,
                          autocorrect: false,
                          obscureText: _isObscure1,
                          obscuringCharacter: '•',
                          style: heading3,
                          focusNode: _passwordFocusNode,
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: const BorderSide(
                                      width: 2.0, color: primaryColor)),
                              contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      width: 2.0, color: secondaryColor),
                                  borderRadius: BorderRadius.circular(8.0)),
                              suffixIcon: IconButton(
                                  icon: Padding(
                                      padding:
                                          const EdgeInsets.only(right: 4.0),
                                      child: Icon(
                                          color: _isObscure1
                                              ? secondaryColor
                                              : textColor,
                                          _isObscure1
                                              ? Icons.visibility_off
                                              : Icons.visibility)),
                                  onPressed: () {
                                    setState(() {
                                      _isObscure1 = !_isObscure1;
                                    });
                                  }),
                              hintText: 'Kata sandi Anda di sini',
                              hintStyle: disableText)),
                      Padding(
                        padding: const EdgeInsets.only(top: 28, bottom: 8.0),
                        child: Text('Konfirmasi Kata Sandi', style: heading3),
                      ),
                      TextFormField(
                          enableSuggestions: false,
                          autocorrect: false,
                          obscureText: _isObscure2,
                          obscuringCharacter: '•',
                          style: heading3,
                          focusNode: _confirmPasswordFocusNode,
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: const BorderSide(
                                      width: 2.0, color: primaryColor)),
                              contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      width: 2.0, color: secondaryColor),
                                  borderRadius: BorderRadius.circular(8.0)),
                              suffixIcon: IconButton(
                                  icon: Padding(
                                      padding:
                                          const EdgeInsets.only(right: 4.0),
                                      child: Icon(
                                          color: _isObscure2
                                              ? secondaryColor
                                              : textColor,
                                          _isObscure2
                                              ? Icons.visibility_off
                                              : Icons.visibility)),
                                  onPressed: () {
                                    setState(() {
                                      _isObscure2 = !_isObscure2;
                                    });
                                  }),
                              hintText: 'Kata sandi Anda di sini',
                              hintStyle: disableText)),
                      Padding(
                          padding: const EdgeInsets.symmetric(vertical: 32.0),
                          child: MouseRegion(
                            onHover: (event) => setState(() {
                              _isHovering = true;
                            }),
                            onExit: (event) => setState(() {
                              _isHovering = false;
                            }),
                            child: ElevatedButton(
                                style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8.0))),
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            _isHovering
                                                ? primaryColor.withOpacity(0.8)
                                                : primaryColor)),
                                onPressed: null, // TODO : Add Login Function
                                child: Center(
                                    child: Text('Daftar', style: buttonText))),
                          )),
                      Center(
                        child: RichText(
                            // TODO : Add navigation to Register Page
                            text: TextSpan(
                                text: 'Sudah punya akun? ',
                                style: heading3,
                                children: [
                              TextSpan(
                                  text: 'Masuk',
                                  style: linkText3,
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.pop(context);
                                    })
                            ])),
                      )
                    ])))
      ]),
    );
  }
}
