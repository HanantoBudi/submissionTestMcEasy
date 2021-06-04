import 'package:flutter/material.dart';
import 'package:mceasy/main_drawer.dart';
import 'package:mceasy/cuti_page.dart';
import 'package:mceasy/cuti_new_page.dart';

class CutiDtlPage extends StatelessWidget {

  final String id;
  Cuti cuti = null;

  CutiDtlPage({Key key, @required this.id}) : super(key: key);

  @override
  void initState() {
    getCuti();
  }

  getCuti() {
    List<Cuti> cutis = getListElements();
    for (Cuti c in cutis) {
      if (c.id == id) {
        cuti = c;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Cuti", style: TextStyle(color: Colors.white)),
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
            buttonSection(context),
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
            obscureText: true,
            style: TextStyle(color: Colors.black),
            enabled: false,
            onSaved: (String value) {
              cuti.nomorInduk = value;
            },
            decoration: InputDecoration(
              icon: Icon(Icons.assessment, color: Colors.black),
              // hintText: "Nomor Induk",
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
            enabled: false,
            onSaved: (String value) {
              cuti.tglCuti = value;
            },
            decoration: InputDecoration(
              icon: Icon(Icons.calendar_today, color: Colors.black),
              // hintText: "Tanggal Cuti",
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
            enabled: false,
            onSaved: (String value) {
              cuti.lamaCuti = value;
            },
            decoration: InputDecoration(
              icon: Icon(Icons.nature, color: Colors.black),
              // hintText: "Lama Cuti",
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
            enabled: false,
            onSaved: (String value) {
              cuti.keterangan = value;
            },
            decoration: InputDecoration(
              icon: Icon(Icons.note, color: Colors.black),
              // hintText: "Keterangan",
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

  Container buttonSection(BuildContext context) {
    return Container(
      width: 100.0,
      height: 40.0,
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      margin: EdgeInsets.only(top: 15.0),
      child: RaisedButton(
        onPressed: () {;
          Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => CutiNewPage()), (Route<dynamic> route) => false);
          Navigator.of(context).pushNamed('/cutiNewPage');
        },
        elevation: 0.0,
        color: Colors.purple,
        child: Text("Save", style: TextStyle(color: Colors.white70)),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      ),
    );
  }

  List<Cuti> getListElements() {
    List<Cuti> cutis = [];
    Cuti satu = Cuti("1", "IP06001", "02-Aug-20", "2", "Acara Keluarga");
    cutis.add(satu);
    Cuti dua = Cuti("2", "IP06001", "18-Aug-20", "2", "Anak Sakit");
    cutis.add(dua);
    Cuti tiga = Cuti("3", "IP06001", "19-Aug-20", "1", "Nenek Sakit");
    cutis.add(tiga);
    Cuti empat = Cuti("4", "IP06007", "23-Aug-20", "1", "Sakit");
    cutis.add(empat);
    Cuti lima = Cuti("5", "IP06004", "29-Aug-20", "5", "Menikah");
    cutis.add(lima);
    Cuti enam = Cuti("6", "IP06003", "30-Aug-20", "2", "Acara Keluarga");
    cutis.add(enam);

    return cutis;
  }
}

class Cuti {
  String id;
  String nomorInduk;
  String tglCuti;
  String lamaCuti;
  String keterangan;

  Cuti(this.id, this.nomorInduk, this.tglCuti, this.lamaCuti, this.keterangan);
}