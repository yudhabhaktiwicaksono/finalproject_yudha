import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:need_resume/need_resume.dart';
import 'bantuan.dart';
import 'package:finalproject_yudha/Pengajuan.dart';


class PengajuanAdmin extends StatefulWidget {
  const PengajuanAdmin({Key? key}) : super(key: key);

  @override
  State<PengajuanAdmin> createState() => _PengajuanAdminState();
}

class _PengajuanAdminState extends ResumableState<PengajuanAdmin> {
  List widgets = [];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  void onReady() {
    // Implement your code inside here
  }

  @override
  void onResume() {
    // Implement your code inside here
    loadData();
  }

  @override
  void onPause() {
    // Implement your code inside here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6B46C2),
      appBar: AppBar(
        backgroundColor: Color(0xff6B46C2),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Pengajuan Mahasiswa", ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: widgets.length,
        itemBuilder: (BuildContext context, int position) {
          return getRow(position);
        },
      ),
    );
  }

  Widget getRow(int i) {
    return Padding(
      padding: EdgeInsets.all(0.0),
      child: GestureDetector(
        onTap: () {
          gid = widgets[i]["id"];
          gusername = widgets[i]["username"];
          gtelpon_pengajuan = widgets[i]["telpon_pengajuan"];
          gtanggal_pengajuan = widgets[i]["tanggal_pengajuan"];
          gisi_pengajuan = widgets[i]["isi_pengajuan"];
        },
        child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("${widgets[i]["username"]}",
                  style: TextStyle(fontSize: 12)),
              Text("${widgets[i]["telpon_pengajuan"]}",
                  style: TextStyle(fontSize: 12)),
              Text("${widgets[i]["tanggal_pengajuan"]}",
                  style: TextStyle(fontSize: 12)),
              Text("${widgets[i]["isi_pengajuan"]}",
                  style: TextStyle(fontSize: 12)),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> loadData() async {
    var dataURL = Uri.parse(baseURL + 'pengajuan');
    http.Response response = await http.get(dataURL);
    setState(() {
      widgets = jsonDecode(response.body);
    });
  }
}