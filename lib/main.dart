import 'package:flutter/material.dart';
import 'package:mceasy/home_page.dart';
import 'package:mceasy/detail_page.dart';
import 'package:mceasy/karyawan_page.dart';
import 'package:mceasy/karyawan_new_page.dart';
import 'package:mceasy/karyawan_dtl_page.dart';
import 'package:mceasy/cuti_page.dart';
import 'package:mceasy/cuti_new_page.dart';
import 'package:mceasy/cuti_dtl_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hananto Budi',
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      // initialRoute: '/',
      routes: {
        '/': (_) => HomePage(),
        '/detailPage': (_) => DetailPage(),
        '/karyawanPage': (_) => KaryawanPage(),
        '/karyawanNewPage': (_) => KaryawanNewPage(),
        '/karyawanDtlPage': (_) => KaryawanDtlPage(),
        '/cutiPage': (_) => CutiPage(),
        '/cutiNewPage': (_) => CutiNewPage(),
        '/cutiDtlPage': (_) => CutiDtlPage(),
      },
      theme: ThemeData(
          accentColor: Colors.white70
      ),
    );
  }
}