import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mceasy/home_page.dart';
import 'package:mceasy/karyawan_page.dart';
import 'package:mceasy/cuti_page.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:base_project/login_page.dart';

class MainDrawer extends StatelessWidget {

  @override
  void initState() {
    // getSharedPreferences();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20.0),
            color: Theme.of(context).primaryColor,
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 100.0,
                    height: 100.0,
                    margin: EdgeInsets.only(top: 30.0, bottom: 10.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(image: NetworkImage('https://images.app.goo.gl/yQWmo1tdG7MhuprP6'), fit: BoxFit.fill),
                    ),
                  ),
                  Text("Hananto Budi", style: TextStyle(fontSize: 22, color: Colors.white),)
                ],
              ),
            ),
          ),
          ListTile(
              leading: Icon(Icons.house),
              title: Text('Home', style: TextStyle(fontSize: 18),),
              // onTap: null,
              onTap: () {
                Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => HomePage()), (Route<dynamic> route) => false);
                Navigator.of(context).pushNamed('/homePage');
              }
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Karyawan', style: TextStyle(fontSize: 18),),
            // onTap: null,
            onTap: () {
                Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => KaryawanPage()), (Route<dynamic> route) => false);
                Navigator.of(context).pushNamed('/karyawanPage');
              }
          ),
          ListTile(
            leading: Icon(Icons.calendar_today),
            title: Text('Cuti', style: TextStyle(fontSize: 18),),
              onTap: () {
                Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => CutiPage()), (Route<dynamic> route) => false);
                Navigator.of(context).pushNamed('/cutiPage');
              }
          ),
        ],
      ),
    );
  }
}
