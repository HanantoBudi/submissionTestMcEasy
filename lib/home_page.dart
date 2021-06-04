import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mceasy/main_drawer.dart';
import 'package:mceasy/detail_page.dart';

class HomePage extends StatefulWidget {
  @override
  _MyHomePageState createState () => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {

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
            Text("Hananto Budi", style: TextStyle(color: Colors.white)),
            SizedBox(
              width: 8.0,
            ),
          ],
        ),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('My Home Page',
                style: TextStyle(fontSize: 22)),
            RaisedButton(
                child: Text('Go to details'),
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => DetailPage()), (Route<dynamic> route) => false);
                  Navigator.of(context).pushNamed('/detailPage');
                }
            ),
          ],
        ),
      ),
    );
  }

  // Widget getButton() {
  //   var button = RaisedButton(
  //     child: Text(client.connectionStatus.state == MqttConnectionState.connected
  //         ? 'Disconnect'
  //         : 'Connect'),
  //     onPressed: () {
  //       if (client.connectionStatus.state == MqttConnectionState.connected) {
  //         disconnect(client, connectionState);
  //       } else {
  //         connect(client, connectionState);
  //       }
  //     },
  //   );
  //   return button;
  // }
}
