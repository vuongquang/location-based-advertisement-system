import 'package:flutter/material.dart';
import 'package:locationbasedadvertismentapp/screens/map_view.dart';
class homescreen extends StatefulWidget {
  @override
  _homescreenState createState() => new _homescreenState();
}

class _homescreenState extends State<homescreen> with TickerProviderStateMixin{
  AnimationController _controller;

  static const List <IconData> icons = const [Icons.camera_alt,Icons.menu, Icons.view_comfy];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = new AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 500)
    );
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
                accountName: new Text ("Quyen (My) T.B. Dang"),
                accountEmail: new Text("QuyenQuyen@gmail.com"),
                currentAccountPicture: new CircleAvatar(
                  backgroundColor: Colors.white,
                  child: new Text("Q"),
                )
            ),
            new ListTile(
              title: new Text ("Events are near here"),
              trailing: new Icon(Icons.event),
              onTap: () => null,
            ),
            new ListTile(
              title: new Text("Log out"),
              trailing: new Icon((Icons.input)),
              onTap: () => Navigator.of(context).pushNamed("Login")
            )
            ,
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
          onPressed: () => {}

          ),
      body: new MapView() ,
    );
  }
}
