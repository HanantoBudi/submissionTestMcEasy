import 'package:flutter/material.dart';
import 'package:mceasy/main_drawer.dart';
import 'package:mceasy/karyawan_page.dart';

class KaryawanNewPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Karyawan Baru", style: TextStyle(color: Colors.white)),
        actions: <Widget>[
          FlatButton(
              onPressed: () {;
                Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => KaryawanPage()), (Route<dynamic> route) => false);
                Navigator.of(context).pushNamed('/karyawanPage');
              },
              child: Text("Back", style: TextStyle(color: Colors.white))
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            textSection(),
            buttonSection(),
          ],
        ),
      ),
      drawer: MainDrawer(),
    );
  }

  Container textSection() {
    DateTime _dateTime;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      margin: EdgeInsets.only(top: 30.0),
      child: Column(
        children: <Widget>[
          TextFormField(
            controller: nomorIndukController,
            cursorColor: Colors.black,

            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              icon: Icon(Icons.assessment, color: Colors.black),
              hintText: "Nomor Induk",
              border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
              hintStyle: TextStyle(color: Colors.black),
            ),
          ),
          SizedBox(height: 30.0),
          TextFormField(
            controller: namaController,
            cursorColor: Colors.black,
            obscureText: true,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              icon: Icon(Icons.people, color: Colors.black),
              hintText: "Nama",
              border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
              hintStyle: TextStyle(color: Colors.black),
            ),
          ),
          SizedBox(height: 30.0),
          TextFormField(
            controller: alamatController,
            cursorColor: Colors.black,
            obscureText: true,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              icon: Icon(Icons.house, color: Colors.black),
              hintText: "Alamat",
              border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
              hintStyle: TextStyle(color: Colors.black),
            ),
          ),
          SizedBox(height: 30.0),
          TextFormField(
            controller: tglLahirController,
            cursorColor: Colors.black,
            obscureText: true,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              icon: Icon(Icons.calendar_today, color: Colors.black),
              hintText: "Tanggal Lahir",
              border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
              hintStyle: TextStyle(color: Colors.black),
            ),
          ),
          SizedBox(height: 30.0),
          TextFormField(
            controller: tglBergabungController,
            cursorColor: Colors.black,
            obscureText: true,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              icon: Icon(Icons.calendar_today, color: Colors.black),
              hintText: "Tanggal Bergabung",
              border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
              hintStyle: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }

  TextEditingController nomorIndukController = new TextEditingController();
  TextEditingController namaController = new TextEditingController();
  TextEditingController alamatController = new TextEditingController();
  TextEditingController tglLahirController = new TextEditingController();
  TextEditingController tglBergabungController = new TextEditingController();

  Container buttonSection() {
    return Container(
      width: 100.0,
      height: 40.0,
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      margin: EdgeInsets.only(top: 15.0),
      child: RaisedButton(
        onPressed: nomorIndukController.text == "" || namaController.text == "" ||
          alamatController.text == "" || tglLahirController.text == "" || tglBergabungController.text == "" ? null : () {
        //   save(nomorIndukController.text, namaController.text, alamatController.text, tglLahirController.text, tglBergabungController.text);
        },
        elevation: 0.0,
        color: Colors.purple,
        child: Text("Save", style: TextStyle(color: Colors.white70)),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      ),
    );
  }

}
