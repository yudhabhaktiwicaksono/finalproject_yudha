import 'Profile.dart';
import 'Sign_In_Pages.dart';
import 'package:flutter/material.dart';
import 'Theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Home_Screen.dart';

class AgendaPage extends StatelessWidget {
  static const routeName = 'Agenda';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(
        0xffFFFFFF,
      ),
      body: Container(
        height: 177,
        width: 400,
        decoration: BoxDecoration(
          color: Color(0xff6B46C2),
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(
              10,
            ),
          ),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: 40,
                  ),
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => home_page(username: '',),
                        ),
                      );
                    },
                    icon: Image.asset("assets/Back_Icon.png"),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 40,
                  ),
                  child: Text(
                    'Agenda',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: semibold,
                      color: Color(
                        0xffFFFFFF,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
