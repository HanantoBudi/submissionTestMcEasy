import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mceasy/main_drawer.dart';
import 'package:mceasy/cuti_new_page.dart';
import 'package:mceasy/cuti_dtl_page.dart';

class CutiPage extends StatefulWidget {
  @override
  _MyCutiPageState createState () => _MyCutiPageState();
}

class _MyCutiPageState extends State<CutiPage> {

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
            Text("Cuti", style: TextStyle(color: Colors.white)),
            SizedBox(
              width: 8.0,
            ),
          ],
        ),
        actions: <Widget>[
          FlatButton(
              onPressed: () {;
              Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => CutiNewPage()), (Route<dynamic> route) => false);
              },
              child: Text("New", style: TextStyle(color: Colors.white))
          )
        ],
      ),
      drawer: MainDrawer(),
      body: getListView()
    );
  }

  Widget getListView() {
    var listItems = getListElements();
    var listView = ListView.builder(
        itemCount: listItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Text(listItems[index].id),
            title: Text(listItems[index].nomorInduk),
            subtitle: Text(listItems[index].tglCuti+" - "+listItems[index].keterangan),
              trailing: Icon(Icons.delete),
              onTap: () {
                Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => CutiDtlPage(id: listItems[index].id)), (Route<dynamic> route) => false);
                Navigator.of(context).pushNamed('/cutiDtlPage');
              }
          );
        }
    );
    return listView;
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
  final String id;
  final String nomorInduk;
  final String tglCuti;
  final String lamaCuti;
  final String keterangan;

  Cuti(this.id, this.nomorInduk, this.tglCuti, this.lamaCuti, this.keterangan);
}
