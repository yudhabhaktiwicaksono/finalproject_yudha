import 'package:finalproject_yudha/Home_Screen.dart';
import 'package:flutter/material.dart';
import 'package:finalproject_yudha/Theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:finalproject_yudha/Lupa_Password.dart';
import 'dart:convert';
import 'dart:async';
import "package:http/http.dart" as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:finalproject_yudha/BerandaAdmin.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool passwordVisible = false;
  late SharedPreferences logindata;
  late bool newuser;

  TextEditingController username = new TextEditingController();
  TextEditingController pass = new TextEditingController();

  var url = Uri.parse("http://192.168.189.246:8080/amikom/login.php");

  Future _login() async {
    final response =
    await http.post(url, body: {
      "username": username.text,
      "password": pass.text,
    });
    var dbuser = json.decode(response.body);
    if (dbuser.length == 0) {
      setState(() {
        tampil();
      });
    } else {
      if (dbuser[0]['mode'] == 'user') {
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => home_page(username: "",)));
      } else if (dbuser[0]['mode'] == 'admin') {
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => BerandaAdmin(username: "",)));
      }
      setState(() {
        username = dbuser[0]['username'];
      });
    }
  }

  void togglePassword() {
    setState(() {
      passwordVisible = !passwordVisible;
    });
  }

  @override
  void initState() {
    super.initState();
    check_if_already_login();
  }

  void check_if_already_login() async {
    logindata = await SharedPreferences.getInstance();
    newuser = (logindata.getBool('Masuk') ?? true);
    print(newuser);
    if (newuser == false) {
      Navigator.pushReplacement(
          context,
          new MaterialPageRoute(builder: (context) => lupa_password(username: '',)));
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Center(
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.only(
                top: 60,
              ),
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
                fontWeight: semibold,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 56,
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
                      hintText: "Masukan Username",
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
                    controller: pass,
                    obscureText: !passwordVisible,
                    decoration: InputDecoration(
                      fillColor: Color(0xffFFFFFF),
                      prefixIcon: Icon(
                        Icons.password_rounded,
                      ),
                      suffixIcon: IconButton(
                        color: Colors.purple,
                        splashRadius: 1,
                        icon: Icon(passwordVisible
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined),
                        onPressed: togglePassword,
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
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 230,
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => lupa_password(username: '',),
                    ),
                  );
                },
                child: Text(
                  "REGISTRASI",
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
                  _login();
                },
                child: Text(
                  "Masuk",
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
  void tampil() {
    Fluttertoast.showToast(
        msg: "LOGIN GAGAL",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
