import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:powerup/pages/base_background.dart';
import 'package:powerup/style.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  // Check if the mouse is hovering over the button
  bool _isHovering = false;

  final FocusNode _emailFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      BaseBackground(),
      Center(
          child: SizedBox(
              width: 584,
              height: 418,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 30.0, sigmaY: 30.0),
                      child: Container(color: cardColor.withOpacity(0.72)))))),
      Center(
          child: SizedBox(
              width: 400,
              height: 234,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Lupa Kata Sandi', style: heading),
                    Padding(
                        padding: const EdgeInsets.only(bottom: 8.0, top: 32.0),
                        child: Text('Email', style: heading3)),
                    TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        style: heading3,
                        focusNode: _emailFocusNode,
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: const BorderSide(
                                    width: 2.0, color: primaryColor)),
                            focusColor: primaryColor,
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 2.0, color: secondaryColor),
                                borderRadius: BorderRadius.circular(8.0)),
                            hintText: 'Email Anda di sini',
                            hintStyle: disableText)),
                    Padding(
                      padding: const EdgeInsets.only(top: 28.0),
                      child: SizedBox(
                          width: 400,
                          height: 52,
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
                                                  ? primaryColor
                                                      .withOpacity(0.8)
                                                  : primaryColor)),
                                  onPressed:
                                      null, // TODO : Add Forget Password Function
                                  child: Center(
                                      child:
                                          Text('Kirim', style: buttonText))))),
                    ),
                  ])))
    ]));
  }
}
