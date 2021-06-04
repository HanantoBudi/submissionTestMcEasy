import 'package:flutter/material.dart';
import 'package:mceasy/main_drawer.dart';
import 'package:mceasy/karyawan_page.dart';
import 'package:mceasy/karyawan_new_page.dart';

class KaryawanDtlPage extends StatelessWidget {

  final String id;
  Karyawan karyawan = null;

  KaryawanDtlPage({Key key, @required this.id}) : super(key: key);

  @override
  void initState() {
    getKaryawan();
  }

  getKaryawan() {
    List<Karyawan> karyawans = getListElements();
    for (Karyawan k in karyawans) {
      if (k.id == id) {
        karyawan = k;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Karyawan", style: TextStyle(color: Colors.white)),
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
              karyawan.nomorInduk = value;
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
            controller: namaController,
            cursorColor: Colors.black,
            obscureText: true,
            style: TextStyle(color: Colors.black),
            enabled: false,
            onSaved: (String value) {
              karyawan.nama = value;
            },
            decoration: InputDecoration(
              icon: Icon(Icons.people, color: Colors.black),
              // hintText: "Nama",
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
            enabled: false,
            onSaved: (String value) {
              karyawan.alamat = value;
            },
            decoration: InputDecoration(
              icon: Icon(Icons.house, color: Colors.black),
              // hintText: "Alamat",
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
            enabled: false,
            onSaved: (String value) {
              karyawan.tglLahir = value;
            },
            decoration: InputDecoration(
              icon: Icon(Icons.calendar_today, color: Colors.black),
              // hintText: "Tanggal Lahir",
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
            enabled: false,
            onSaved: (String value) {
              karyawan.tglBergabung = value;
            },
            decoration: InputDecoration(
              icon: Icon(Icons.calendar_today, color: Colors.black),
              // hintText: "Tanggal Bergabung",
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

  Container buttonSection(BuildContext context) {
    return Container(
      width: 100.0,
      height: 40.0,
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      margin: EdgeInsets.only(top: 15.0),
      child: RaisedButton(
        onPressed: () {;
          Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => KaryawanNewPage()), (Route<dynamic> route) => false);
          Navigator.of(context).pushNamed('/karyawanNewPage');
        },
        elevation: 0.0,
        color: Colors.purple,
        child: Text("Edit", style: TextStyle(color: Colors.white70)),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      ),
    );
  }

  List<Karyawan> getListElements() {
    List<Karyawan> karyawans = [];
    Karyawan agus = Karyawan("1", "IP06001", "Agus", "Jln Gaja Mada no 12, Surabaya", "11-Jan-80", "07-Aug-05");
    karyawans.add(agus);
    Karyawan amin = Karyawan("2", "IP06002", "Amin", "Jln Imam Bonjol no 11, Mojokerto", "03-Sep-77", "07-Aug-05");
    karyawans.add(amin);
    Karyawan yusuf = Karyawan("3", "IP06003", "Yusuf", "Jln A Yani Raya 15 No 14 Malang", "09-Aug-73", "07-Aug-06");
    karyawans.add(yusuf);
    Karyawan alyssa = Karyawan("4", "IP06004", "Alyssa", "Jln Bungur Sari V no 166, Bandung", "18-Mar-83", "06-Sep-06");
    karyawans.add(alyssa);
    Karyawan maulana = Karyawan("5", "IP06005", "Maulana", "Jln Candi Agung, No 78 Gg 5, Jakarta", "10-Nov-78", "10-Sep-06");
    karyawans.add(maulana);
    Karyawan Agfika = Karyawan("6", "IP06006", "Agfika", "Jln Nangka, Jakarta Timur", "07-Feb-79", "02-Jan-07");
    karyawans.add(Agfika);
    Karyawan James = Karyawan("7", "IP06007", "James", "Jln Merpati, 8 Surabaya", "18-May-89", "04-Apr-07");
    karyawans.add(James);
    Karyawan Octavanus = Karyawan("8", "IP06008", "Octavanus", "Jln A Yani 17, B 08 Sidoarjo", "14-Apr-85", "19-May-07");
    karyawans.add(Octavanus);
    Karyawan Nugroho = Karyawan("9", "IP06009", "Nugroho", "Jln Duren tiga 167, Jakarta Selatan", "01-Jan-84", "16-Jan-08");
    karyawans.add(Nugroho);
    Karyawan Raisa = Karyawan("10", "IP06010", "Raisa", "Jln Kelapa Sawit, Jakarta Selatan", "17-Dec-90", "16-Aug-08");
    karyawans.add(Raisa);

    return karyawans;
  }
}

class Karyawan {
  String id;
  String nomorInduk;
  String nama;
  String alamat;
  String tglLahir;
  String tglBergabung;

  Karyawan(this.id, this.nomorInduk, this.nama, this.alamat, this.tglLahir, this.tglBergabung);
}