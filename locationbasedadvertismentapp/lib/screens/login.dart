import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => new _LoginState();
}

class _LoginState extends State<Login> with SingleTickerProviderStateMixin {
  String email ='';
  String password ='';
  AnimationController _iconAnimationController;
  Animation<double> _iconAnimation; // with SingTickerProviderStateMixin
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _iconAnimationController = new AnimationController(
        vsync: this, duration: new Duration(milliseconds: 1000));
    _iconAnimation = new CurvedAnimation(
        parent: _iconAnimationController, curve: Curves.easeOut);
    _iconAnimation.addListener(() => this.setState(() {}));
    _iconAnimationController.forward();
  }

  void _Login (){
    if (email != '' && password != ''){

      print('Da nhan'+ email);
      //Navigator.of(context).pushNamed('/HomeScreen');
      Navigator.of(context).pushNamedAndRemoveUntil('/HomeScreen', (Route <dynamic> route) => false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.black,
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Image(
            image: new AssetImage("assets/mushroom.png"),
            fit: BoxFit.contain,
            color: Colors.black87,
            colorBlendMode: BlendMode.darken,
          ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new FlutterLogo(
                size: _iconAnimation.value * 100,
              ),
              new Form(
                  autovalidate: true,
                  child: new Theme(
                      data: new ThemeData(
                          brightness: Brightness.dark,
                          primarySwatch: Colors.teal,
                          inputDecorationTheme: new InputDecorationTheme(
                              labelStyle: new TextStyle(
                                  color: Colors.teal, fontSize: 20.0))),
                      child: new Container(
                        padding: const EdgeInsets.all(40.0),
                        child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            new TextField(
                              onChanged: (String Value) {setState(() {email =Value;});},
                              decoration:
                                  new InputDecoration(
                                      border: new OutlineInputBorder(
                                          borderRadius: new BorderRadius.circular(20.0)
                                      ),
                                      labelText: "Enter Email",
                                      hintText: "Enter your Email"),
                              keyboardType: TextInputType.emailAddress,
                            ),
                            new Padding(padding: const EdgeInsets.only (top: 20.0)),
                            new TextField(
                              onChanged: (String Value) {setState(() {password =Value;});},
                              decoration:
                                  new InputDecoration(
                                      border: new OutlineInputBorder(
                                        borderRadius: new BorderRadius.circular(20.0)
                                      ),
                                      //icon: new Icon(Icons.input),
                                      hintText: "Password has length over 8 letters",
                                      labelText: "Enter Password"),
                              keyboardType: TextInputType.text,
                              obscureText: true,
                            ),
                            new Padding(padding: const EdgeInsets.only (top: 20.0)),
                            new RaisedButton(
                                color: Colors.teal,
                                textColor: Colors.white,
                                child: new Text("Login"),
                                splashColor: Colors.redAccent,

                                onPressed: () =>_Login (),
                              ),
                            new Padding(padding: const EdgeInsets.only (top: 10.0)),
                            new Text(
                              'or',
                              style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.white),),
                            new Padding(padding: const EdgeInsets.only (top: 10.0)),
                            new Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                new RaisedButton(
                                  onPressed: () =>{},
                                  child: new Text("Google"),
                                  textColor: Colors.white,
                                  splashColor: Colors.blueAccent,
                                  color: Colors.red,
                                ),
                                new Padding(padding: const EdgeInsets.only (right: 15.0)),
                                new RaisedButton(
                                  onPressed: () =>{},
                                  child: new Text("Facebook"),
                                  textColor: Colors.white,
                                  splashColor: Colors.red,
                                  color: Colors.blueAccent,),
                              ],
                            )
                          ],
                        ),
                      )))
            ],
          )
        ],
      ),
    );
  }
}
