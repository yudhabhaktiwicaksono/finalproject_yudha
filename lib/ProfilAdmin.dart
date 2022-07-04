import 'Sign_In_Pages.dart';
import 'package:flutter/material.dart';
import 'Theme.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileAdmin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(top: 40, left: 20),
          child: Icon(Icons.account_circle, color: Colors.white,size: 68,),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          margin: EdgeInsets.only(top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "wicaksono",
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  color: Color(0xffFFFFFF),
                ),
              ),
              Text(
                "Admin",
                style: GoogleFonts.poppins(
                  fontSize: 10,
                  color: Color(0xffF7F7F7),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            left: 110,
            top: 20,
          ),
          child: Row(
            children: [
              Image.asset("assets/notifikasi.png"),
            ],
          ),
        )
      ],
    );
  }
}
