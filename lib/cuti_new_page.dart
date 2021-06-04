import 'package:flutter/material.dart';
import 'package:mceasy/main_drawer.dart';
import 'package:mceasy/cuti_page.dart';

class CutiNewPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cuti New", style: TextStyle(color: Colors.white)),
        actions: <Widget>[
          FlatButton(
              onPressed: () {;
              Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => CutiPage()), (Route<dynamic> route) => false);
              Navigator.of(context).pushNamed('/cutiPage');
              },
              child: Text("Back", style: TextStyle(color: Colors.white))
          )
        ],
      ),
      body: Center(
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
            controller: tglCutiController,
            cursorColor: Colors.black,
            obscureText: true,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              icon: Icon(Icons.calendar_today, color: Colors.black),
              hintText: "Tanggal Cuti",
              border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
              hintStyle: TextStyle(color: Colors.black),
            ),
          ),
          SizedBox(height: 30.0),
          TextFormField(
            controller: lamaCutiController,
            cursorColor: Colors.black,
            obscureText: true,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              icon: Icon(Icons.nature, color: Colors.black),
              hintText: "Lama Cuti",
              border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
              hintStyle: TextStyle(color: Colors.black),
            ),
          ),
          SizedBox(height: 30.0),
          TextFormField(
            controller: keteranganController,
            cursorColor: Colors.black,
            obscureText: true,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              icon: Icon(Icons.note, color: Colors.black),
              hintText: "Keterangan",
              border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
              hintStyle: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }

  TextEditingController nomorIndukController = new TextEditingController();
  TextEditingController tglCutiController = new TextEditingController();
  TextEditingController lamaCutiController = new TextEditingController();
  TextEditingController keteranganController = new TextEditingController();

  Container buttonSection() {
    return Container(
      width: 100.0,
      height: 40.0,
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      margin: EdgeInsets.only(top: 15.0),
      child: RaisedButton(
        onPressed: nomorIndukController.text == "" || tglCutiController.text == "" ||
            lamaCutiController.text == "" || keteranganController.text == "" ? null : () {
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
