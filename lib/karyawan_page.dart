import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mceasy/karyawan_new_page.dart';
import 'package:mceasy/karyawan_dtl_page.dart';
import 'package:mceasy/main_drawer.dart';

class KaryawanPage extends StatefulWidget {
  @override
  _MyKaryawanPageState createState () => _MyKaryawanPageState();
}

class _MyKaryawanPageState extends State<KaryawanPage> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title: Text("Base Project", style: TextStyle(color: Colors.white)),
        title: Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Karyawan", style: TextStyle(color: Colors.white)),
            SizedBox(
              width: 8.0,
            ),
          ],
        ),
        actions: <Widget>[
          FlatButton(
              onPressed: () {;
                Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => KaryawanNewPage()), (Route<dynamic> route) => false);
                Navigator.of(context).pushNamed('/karyawanNewPage');
              },
              child: Text("New", style: TextStyle(color: Colors.white))
          )
        ],
      ),
      drawer: MainDrawer(),
        body: getListView(),
    );
  }

  Widget getListView() {
    var listItems = getListElements();
    var listView = ListView.builder(
        itemCount: listItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Text(listItems[index].id),
            title: Text(listItems[index].nama+" - "+listItems[index].nomorInduk),
            subtitle: Text(listItems[index].alamat),
              trailing: Icon(Icons.delete),
              onTap: () {
                Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => KaryawanDtlPage(id: listItems[index].id)), (Route<dynamic> route) => false);
                Navigator.of(context).pushNamed('/karyawanDtlPage');
              }
            );
          }
      );
    return listView;
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
  final String id;
  final String nomorInduk;
  final String nama;
  final String alamat;
  final String tglLahir;
  final String tglBergabung;

  Karyawan(this.id, this.nomorInduk, this.nama, this.alamat, this.tglLahir, this.tglBergabung);
}
