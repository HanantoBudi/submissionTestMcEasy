import 'package:flutter/material.dart';
import 'package:mceasy/main_drawer.dart';

class DetailPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hananto Budi", style: TextStyle(color: Colors.white)),
        // actions: <Widget>[
        //   FlatButton(
        //       onPressed: () {
        //         // Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => LoginPage()), (Route<dynamic> route) => false);
        //       },
        //       child: Text("Log out", style: TextStyle(color: Colors.white))
        //   )
        // ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Details Page',
                style: TextStyle(fontSize: 22)),
            FloatingActionButton(
                child: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.pop(context);
                }
            )
          ],
        ),
      ),
      drawer: MainDrawer(),
    );
  }
}
