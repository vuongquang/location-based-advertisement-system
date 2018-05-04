import 'package:flutter/material.dart';
import 'package:locationbasedadvertismentapp/screens/login.dart';
import 'package:locationbasedadvertismentapp/screens/homescreen.dart';
import 'package:map_view/map_view.dart';
var apiKey = "AIzaSyBoR-eLBs8-FHmu1fZ46hv6GkQLPtdQE2s";
void main() {
  MapView.setApiKey(apiKey);
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      routes:  <String, WidgetBuilder> {
        '/HomeScreen': (BuildContext context) => new homescreen()
      },
      theme: new ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: new Login(),
    );
  }
}

class ThuNghiem extends StatefulWidget {
  @override
  _ThuNghiemState createState() => new _ThuNghiemState();
}

class _ThuNghiemState extends State<ThuNghiem> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Text ('ddd'),
    );
  }
}

