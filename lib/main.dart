import 'package:flutter/material.dart';

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
          Center(
            child: SizedBox(
              width: 400,
              height: 530,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 32.0),
                      child: Text(
                        'Masuk ke Akun Kamu',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 32.0),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        'Email',
                        style: TextStyle(color: Colors.white, fontSize: 14.0),
                      ),
                    ),
                    TextField(
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          hintText: 'Email Anda di sini',
                          hintStyle: const TextStyle(color: Color(0xff69788F)),
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 10000, color: Color(0xffC7C7C7)),
                              borderRadius: BorderRadius.circular(8.0))),
                    ),
                  ],
                ),
              ),
            ),
          )
        ])
      ])),
    );
  }
}
