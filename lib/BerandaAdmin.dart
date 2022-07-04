import 'package:finalproject_yudha/bantuan.dart';
import 'Agenda.dart';
import 'Berita_Kampus.dart';
import 'Bikam.dart';
import 'Keuangan.dart';
import 'Kontrak.dart';
import 'package:finalproject_yudha/PengajuanAdmin.dart';
import 'Presensi.dart';
import 'Rna.dart';
import 'Rps.dart';
import 'Seminar.dart';
import 'Transkip_Nilai.dart';
import 'Ujian_Semester.dart';
import 'ProfilAdmin.dart';
import 'package:flutter/material.dart';
import 'Theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Khs_Pages.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BerandaAdmin extends StatefulWidget {
  final String username;
  BerandaAdmin({required this.username});

  @override
  State<BerandaAdmin> createState() => _BerandaAdminState();
}

class _BerandaAdminState extends State<BerandaAdmin> {
  late SharedPreferences logindata;
  @override
  void initState() {
    super.initState();
    initial();
  }
  void initial() async {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      username = logindata.getString('username')!;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Stack(
        children: [
          Container(
            height: 250,
            width: 400,
            decoration: BoxDecoration(
              color: Color(0xff6B46C2),
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(
                  10,
                ),
              ),
            ),
          ),
          Column(
            children: [
              ProfileAdmin(),
            ],
          ),
          Positioned(
            top: 160,
            left: 50,
            child: Container(
              height: 150,
              width: 270,
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                margin: EdgeInsets.only(
                  left: 20,
                  bottom: 50,
                ),
                child: Row(
                  children: [
                    Text(
                      "Semester 4",
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        color: Color(0xff999999),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Image.asset("assets/garis.png"),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 20,
                      ),
                      child: Text(
                        "IPK 3.65",
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          color: Color(0xff999999),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 270,
                  left: 40,
                ),
                child: Text(
                  "Fitur",
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: semibold,
                    color: Color(0xff000000),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 300,
                      left: 20,
                    ),
                    width: 40,
                    height: 40,
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => khsPage(),
                          ),
                        );
                      },
                      icon: Image.asset("assets/khs.png"),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 20,
                    ),
                    child: Text(
                      "KHS",
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: semibold,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 300,
                      left: 10,
                    ),
                    width: 40,
                    height: 40,
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => TranskipNilaiPage(),
                          ),
                        );
                      },
                      icon: Image.asset("assets/transkip nilai.png"),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 10,
                    ),
                    child: Text(
                      "Transkip Nilai",
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: semibold,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 300,
                      left: 10,
                    ),
                    width: 40,
                    height: 40,
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => PengajuanAdmin(),
                          ),
                        );
                      },
                      icon: Image.asset("assets/pengajuan.png"),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 10,
                    ),
                    child: Text(
                      "Pengajuan",
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: semibold,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 300,
                      left: 10,
                    ),
                    width: 40,
                    height: 40,
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => UjianSemesterPage(),
                          ),
                        );
                      },
                      icon: Image.asset("assets/jadwal.png"),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 10,
                    ),
                    child: Text(
                      "Ujian Semester",
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: semibold,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 370,
                      left: 20,
                    ),
                    width: 40,
                    height: 40,
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => AgendaPage(),
                          ),
                        );
                      },
                      icon: Image.asset("assets/jadwal.png"),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 14,
                    ),
                    child: Text(
                      "Agenda",
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: semibold,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 370,
                      left: 25,
                    ),
                    width: 40,
                    height: 40,
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => SeminarPage(),
                          ),
                        );
                      },
                      icon: Image.asset("assets/jadwal.png"),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 25,
                    ),
                    child: Text(
                      "Seminar",
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: semibold,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 370,
                      left: 30,
                    ),
                    width: 40,
                    height: 40,
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => PresensiPage(),
                          ),
                        );
                      },
                      icon: Image.asset("assets/presensi.png"),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 30,
                    ),
                    child: Text(
                      "Presensi",
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: semibold,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 370,
                      left: 45,
                    ),
                    width: 40,
                    height: 40,
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => BikamPage(),
                          ),
                        );
                      },
                      icon: Image.asset("assets/jadwal.png"),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 45,
                    ),
                    child: Text(
                      "Bikam",
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: semibold,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 440,
                      left: 20,
                    ),
                    width: 40,
                    height: 40,
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => RpsPage(),
                          ),
                        );
                      },
                      icon: Image.asset("assets/rps.png"),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 20,
                    ),
                    child: Text(
                      "RPS",
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: semibold,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 440,
                      left: 25,
                    ),
                    width: 40,
                    height: 40,
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => KeuanganPage(),
                          ),
                        );
                      },
                      icon: Image.asset("assets/keuangan.png"),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 25,
                    ),
                    child: Text(
                      "Keuangan",
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: semibold,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 440,
                      left: 30,
                    ),
                    width: 40,
                    height: 40,
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => RnaPage(),
                          ),
                        );
                      },
                      icon: Image.asset("assets/rna.png"),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 30,
                    ),
                    child: Text(
                      "RNA",
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: semibold,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 440,
                      left: 45,
                    ),
                    width: 40,
                    height: 40,
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => KontrakPage(),
                          ),
                        );
                      },
                      icon: Image.asset("assets/kontrak.png"),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 45,
                    ),
                    child: Text(
                      "Kontrak",
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: semibold,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 500,
                  left: 30,
                ),
                child: Text(
                  "Berita Kampus",
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    color: Color(0xff000000),
                    fontWeight: semibold,
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 500,
                  left: 100,
                ),
                child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: white),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => BeritakampusPage(),
                      ),
                    );
                  },
                  child: Text(
                    "Lihat Semua",
                    style: GoogleFonts.poppins(
                      fontSize: 10,
                      color: Color(0xff999999),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 550,
                  left: 30,
                  right: 30,
                ),
                width: 340,
                height: 93,
                decoration: BoxDecoration(
                  color: Color(0xff6B46C2),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
