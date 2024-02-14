/// This file contains the implementation of the LoginPage class.
/// The LoginPage is a StatefulWidget that displays a login form.
/// It includes text fields for email and password input, as well as
/// buttons for submitting the form and logging in with Google.
/// The form is displayed on top of a blurred background image.
/// The LoginPage class extends the BaseBackground class, which provides
/// a base background for the login page.
/// The LoginPage class also uses various styles and colors defined in the
/// style.dart file.
/// The LoginPage class has a private _isObscure variable that determines
/// whether the password field should show the password or hide it.
/// The _isObscure variable can be toggled by pressing the visibility icon
/// next to the password field.
/// The LoginPage class uses TextFormField widgets for email and password input.
/// The email field accepts email addresses and the password field hides the
/// entered text with bullet characters.
/// The LoginPage class also includes buttons for submitting the form and
/// logging in with Google.
/// The LoginPage class is wrapped in a Stack widget to layer the background,
/// form, and buttons on top of each other.
/// The LoginPage class is used in the app's login flow to allow users to
/// log in to their accounts.
library;

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:powerup/pages/base_background.dart';
import 'package:powerup/style.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Check if showing password or not (if true = hide else = show)
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      const BaseBackground(),
      Center(
          child: SizedBox(
              width: 514,
              height: 720,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 30.0, sigmaY: 30.0),
                      child: Container(color: cardColor.withOpacity(0.72)))))),
      Padding(
          padding: const EdgeInsets.all(92.0),
          child: Center(
              child: SizedBox(
                  width: 400,
                  height: 530,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Masuk ke Akun Kamu', style: heading),
                        Padding(
                            padding:
                                const EdgeInsets.only(bottom: 8.0, top: 32.0),
                            child: Text('Email', style: heading3)),
                        TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            style: GoogleFonts.plusJakartaSans(
                                textStyle: const TextStyle(color: textColor),
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500),
                            decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 20.0),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 2.0, color: secondaryColor),
                                    borderRadius: BorderRadius.circular(8.0)),
                                hintText: 'Email Anda di sini',
                                hintStyle: disableText)),
                        Padding(
                            padding:
                                const EdgeInsets.only(top: 28.0, bottom: 8.0),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Kata Sandi', style: heading3),
                                  Text('Lupa Kata Sandi?',
                                      style:
                                          linkText4) // TODO : Add navigation to Forgot Password Page
                                ])),
                        TextFormField(
                            enableSuggestions: false,
                            autocorrect: false,
                            obscureText: _isObscure,
                            obscuringCharacter: '•',
                            style: GoogleFonts.plusJakartaSans(
                                textStyle: const TextStyle(color: textColor),
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500),
                            decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 20.0),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 2.0, color: secondaryColor),
                                    borderRadius: BorderRadius.circular(8.0)),
                                suffixIcon: IconButton(
                                    icon: Padding(
                                        padding:
                                            const EdgeInsets.only(right: 4.0),
                                        child: Icon(
                                            color: _isObscure
                                                ? secondaryColor
                                                : textColor,
                                            _isObscure
                                                ? Icons.visibility_off
                                                : Icons.visibility)),
                                    onPressed: () {
                                      setState(() {
                                        _isObscure = !_isObscure;
                                      });
                                    }),
                                hintText: 'Kata sandi Anda di sini',
                                hintStyle: disableText)),
                        Padding(
                            padding: const EdgeInsets.symmetric(vertical: 32.0),
                            child: SizedBox(
                                width: 400,
                                height: 52,
                                child: ElevatedButton(
                                    style: ButtonStyle(
                                        shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        8.0))),
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                primaryColor)),
                                    onPressed:
                                        null, // TODO : Add Login Function
                                    child: Center(
                                        child: Text('Masuk',
                                            style: buttonText))))),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Container(
                                  height: 1.0,
                                  decoration: BoxDecoration(
                                      color: secondaryColor,
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12.0),
                                child: Text('Atau lanjutkan dengan',
                                    style: heading3),
                              ),
                              Expanded(
                                child: Container(
                                  height: 1.0,
                                  decoration: BoxDecoration(
                                      color: secondaryColor,
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              )
                            ]),
                        Padding(
                            padding: const EdgeInsets.symmetric(vertical: 32.0),
                            child: Center(
                                child: SizedBox(
                                    width: double.infinity,
                                    child: OutlinedButton(
                                        style: OutlinedButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8.0)),
                                            side: const BorderSide(
                                                width: 2.0,
                                                color: secondaryColor)),
                                        onPressed:
                                            null, // TODO : Add Google Sign In
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            SvgPicture.asset(
                                                'assets/images/Google logo.svg'),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8.0,
                                                  top: 16.0,
                                                  bottom: 16),
                                              child: Text('Masuk dengan Google',
                                                  style: heading3),
                                            ),
                                          ],
                                        ))))),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RichText(
                                  // TODO : Add navigation to Register Page
                                  text: TextSpan(
                                      text: 'Belum memiliki Akun? ',
                                      style: heading3,
                                      children: [
                                    TextSpan(
                                        text: 'Daftar Sekarang',
                                        style: linkText3)
                                  ]))
                            ])
                      ]))))
    ]);
  }
}
