import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Stack(children: [
          Container(
              decoration: const BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                      image: AssetImage('assets/images/Iso.png'),
                      fit: BoxFit.cover))),
          Opacity(opacity: 0.8, child: Container(color: Colors.black)),
          Stack(children: [
            Center(
              child: Opacity(
                  opacity: 0.5,
                  child: Container(
                      width: 584, height: 714, color: const Color(0xff20242D))),
            ),
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
                            Text('Masuk ke Akun Kamu',
                                style: GoogleFonts.plusJakartaSans(
                                    textStyle: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 32.0))),
                            Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 8.0, top: 32.0),
                                child: Text('Email',
                                    style: GoogleFonts.plusJakartaSans(
                                        textStyle: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 14.0)))),
                            TextField(
                                style: const TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                    hintText: 'Email Anda di sini',
                                    hintStyle: GoogleFonts.plusJakartaSans(
                                        textStyle: const TextStyle(
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xff69788F))),
                                    border: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            width: 2.0,
                                            color: Color(0xffC7C7C7)),
                                        borderRadius:
                                            BorderRadius.circular(8.0)))),
                            Padding(
                                padding: const EdgeInsets.only(
                                    top: 28.0, bottom: 8.0),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Kata Sandi',
                                          style: GoogleFonts.plusJakartaSans(
                                              textStyle: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14.0))),
                                      Text('Lupa Kata Sandi?',
                                          style: GoogleFonts.plusJakartaSans(
                                              textStyle: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12.0)))
                                    ])),
                            TextField(
                              autocorrect: false,
                              obscureText: true,
                              obscuringCharacter: '*',
                              style: const TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                hintText: 'Kata sandi Anda di sini',
                                hintStyle: GoogleFonts.plusJakartaSans(
                                  textStyle: const TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff69788F)),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0xffC7C7C7),
                                    width: 2.0, // Adjust the width here
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
                            Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 32.0),
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
                                                  const Color(0xff386EDC))),
                                      onPressed: null,
                                      child: Center(
                                        child: Text('Masuk',
                                            style: GoogleFonts.plusJakartaSans(
                                                textStyle: const TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20,
                                                    color: Colors.white))),
                                      )),
                                )),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Divider(color: Colors.white),
                                  Text('Atau lanjutkan dengan',
                                      style: GoogleFonts.plusJakartaSans(
                                          textStyle: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w500))),
                                  const Divider(color: Colors.white)
                                ]),
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 32.0),
                              child: ElevatedButton(
                                  onPressed: null,
                                  child: Text('Masuk dengan google')),
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  RichText(
                                      text: TextSpan(
                                          text: 'Belum memiliki Akun?',
                                          style: GoogleFonts.plusJakartaSans(
                                              textStyle: const TextStyle(
                                                  color: Color(0xffC7C7C7),
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.w500)),
                                          children: [
                                        TextSpan(
                                            text: 'Daftar Sekarang',
                                            style: GoogleFonts.plusJakartaSans(
                                                textStyle: const TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 14.0)))
                                      ]))
                                ])
                          ]))),
            )
          ])
        ])));
  }
}
