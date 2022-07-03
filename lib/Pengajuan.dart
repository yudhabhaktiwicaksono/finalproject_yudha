import 'package:finalproject_yudha/bantuan.dart';
import 'package:flutter/material.dart';
import 'api.dart';

class PengajuanPage extends StatefulWidget {
  @override
  _PengajuanPageState createState() => _PengajuanPageState();
}

class _PengajuanPageState extends State<PengajuanPage> {
  TextEditingController username = TextEditingController();
  TextEditingController telpon_pengajuan = TextEditingController();
  TextEditingController tanggal_pengajuan = TextEditingController();
  TextEditingController isi_pengajuan = TextEditingController();

  _kirim() async {
    var data = {
      'username': username.text,
      'telpon_pengajuan': telpon_pengajuan.text,
      'tanggal_pengajuan': tanggal_pengajuan.text,
      'isi_pengajuan': isi_pengajuan.text,
    };
    bool res = await CallApi().postData(data, 'pengajuan', context);
    Navigator.pop(context);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Pengajuan",
          style: TextStyle(color: Colors.black, fontSize: 25.0),
        ),
        centerTitle: true,
      ),
      body: Form(
        child: Container(
          color: Color(0xff6B46C2),
          child: ListView(
            children: <Widget>[
              Padding(padding: EdgeInsets.all(5.0)),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Nama Lengkap",
                    labelText: "Nama Lengkap",
                    hintStyle: TextStyle(color: Colors.black),
                    labelStyle: TextStyle(color: Colors.black),
                    prefixIcon: Icon(Icons.people, color: Colors.black),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0))),
                controller: username,
              ),
              Padding(padding: EdgeInsets.all(10.0)),
              TextFormField(
                decoration: new InputDecoration(
                  hintText: "Masukkan Nomor Telepon",
                  labelText: "Nomor Pengaju",
                  hintStyle: TextStyle(color: Colors.black),
                  labelStyle: TextStyle(color: Colors.black),
                  prefixIcon: Icon(Icons.phone, color: Colors.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                controller: telpon_pengajuan,
              ),
              Padding(padding: EdgeInsets.all(10.0)),
              TextFormField(
                decoration: new InputDecoration(
                  hintText: "Masukkan pengajuan",
                  labelText: "Tanggal Pengajuan",
                  hintStyle: TextStyle(color: Colors.black),
                  labelStyle: TextStyle(color: Colors.black),
                  prefixIcon: Icon(Icons.date_range, color: Colors.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                controller: tanggal_pengajuan,
              ),
              Padding(padding: EdgeInsets.all(10.0)),
              TextFormField(
                decoration: new InputDecoration(
                  hintText: "isi pengajuan",
                  labelText: "Isi Pengajuan",
                  hintStyle: TextStyle(color: Colors.black),
                  labelStyle: TextStyle(color: Colors.black),
                  prefixIcon: Icon(
                    Icons.report,
                    color: Colors.black,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                controller: isi_pengajuan,
              ),
              Padding(padding: EdgeInsets.all(10.0)),
              Container(
                  width: 200,
                  height: 45,
                  child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0))),
                    onPressed: () {
                      _kirim();
                    },
                    child: Text(
                      'Kirim',
                      style: TextStyle(color: Colors.black, fontSize: 18.0),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}