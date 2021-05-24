import 'package:flutter/material.dart';
import 'RegisterPage.dart';
import 'MainPage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.red[900],
        accentColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return MainPage();
              }));
            },
          ),
          title: Image(
            image: AssetImage('assets/image/logo.png'),
            width: 100,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(5),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Username',
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.red[900],
                        width: 2.0,
                      ))),
                ),
              ),
              Container(
                margin: EdgeInsets.all(5),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Password',
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.red[900],
                        width: 2.0,
                      ))),
                ),
              ),
              Container(
                margin: EdgeInsets.all(5),
                child: Column(
                  children: <Widget>[
                    // ignore: deprecated_member_use
                    RaisedButton(
                      child: Text('Belum Punya Akun ?'),
                      color: Colors.red[900],
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return RegisterPage();
                        }));
                      },
                    ),
                    // ignore: deprecated_member_use
                    RaisedButton(
                      child: Text('Login'),
                      color: Colors.red[900],
                      onPressed: () {},
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
