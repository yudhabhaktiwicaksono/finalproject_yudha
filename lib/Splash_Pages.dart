import 'dart:async';

import 'package:flutter/material.dart';
import 'Theme.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState

    Timer(
      Duration(seconds: 5),
          () => Navigator.pushNamed(context, '/sign-in'),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset(
                "assets/Universitas-Amikom-Purwokerto.png",
                height: 285,
                width: 292,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Selamat Datang Di Pusat Pelayanan Mahasiswa",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                color: white,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
