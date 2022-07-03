import 'Sign_In_Pages.dart';
import 'package:flutter/material.dart';
import 'Theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'api.dart';

class lupa_password extends StatefulWidget {
  final String username;
  lupa_password({required this.username});

  @override
  State<lupa_password> createState() => _lupa_passwordState();
}

class _lupa_passwordState extends State<lupa_password> {
  TextEditingController nim = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();


  _save() async {
    var data = {
      'nim': nim.text,
      'username': username.text,
      'email': email.text,
      'password': password.text,
    };
    bool res = await CallApi().postData(data, 'users', context);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 80),
              child: Image.asset(
                "assets/Universitas-Amikom-Purwokerto.png",
                height: 152,
                width: 185,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Universitas Amikom Purwokerto",
              style: GoogleFonts.poppins(
                fontSize: 20,
                color: Color(0xffFFFFFF),
                fontWeight: semibold,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 25,
                right: 25,
              ),
              child: Column(
                children: [
                  TextFormField(
                    controller: nim,
                    decoration: InputDecoration(
                      fillColor: Color(0xffFFFFFF),
                      prefixIcon: Icon(
                        Icons.person,
                      ),
                      filled: true,
                      hintText: "Masukan NIM",
                      hintStyle: GoogleFonts.poppins(
                        fontSize: 15,
                        color: Color(0xff999999),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 25,
                right: 25,
              ),
              child: Column(
                children: [
                  TextFormField(
                    controller: username,
                    decoration: InputDecoration(
                      fillColor: Color(0xffFFFFFF),
                      prefixIcon: Icon(
                        Icons.person,
                      ),
                      filled: true,
                      hintText: "Masukan Nama",
                      hintStyle: GoogleFonts.poppins(
                        fontSize: 15,
                        color: Color(0xff999999),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 25,
                right: 25,
              ),
              child: Column(
                children: [
                  TextFormField(
                    controller: email,
                    decoration: InputDecoration(
                      fillColor: Color(0xffFFFFFF),
                      prefixIcon: Icon(
                        Icons.email_rounded,
                      ),
                      filled: true,
                      hintText: "Masukan Email",
                      hintStyle: GoogleFonts.poppins(
                        fontSize: 15,
                        color: Color(0xff999999),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 25,
                right: 25,
              ),
              child: Column(
                children: [
                  TextFormField(
                    controller: password,
                    decoration: InputDecoration(
                      fillColor: Color(0xffFFFFFF),
                      prefixIcon: Icon(
                        Icons.vpn_key,
                      ),
                      filled: true,
                      hintText: "Masukan Password",
                      hintStyle: GoogleFonts.poppins(
                        fontSize: 15,
                        color: Color(0xff999999),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 190,
              ),
              child: TextButton(
                onPressed: () {
                  _save();
                },
                child: Text(
                  "Kembali Ke Sign in ?",
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    color: Color(0xffFFFFFF),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 35,
              width: 124,
              child: TextButton(
                style: TextButton.styleFrom(backgroundColor: white),
                onPressed: () {
                  _save();
                },
                child: Text(
                  "Kirim",
                  style: GoogleFonts.poppins(
                    color: Color(0xff000000),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
