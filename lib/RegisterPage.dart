import 'package:flutter/material.dart';
import 'LoginPage.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
                return LoginPage();
              }));
            },
          ),
          title: Image(
            image: AssetImage('assets/image/logo.png'),
            width: 100,
          ),
        ),
        body: ListView(
          padding: const EdgeInsets.all(8),
          children: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.all(5),
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Nama',
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.red[900], width: 2.0),
                        )),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Username',
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.red[900], width: 2.0),
                        )),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Email',
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.red[900], width: 2.0),
                        )),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Password',
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.red[900], width: 2.0),
                        )),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  child: Column(
                    children: [
                      // ignore: deprecated_member_use
                      RaisedButton(
                        child: Text('Register'),
                        color: Colors.red[900],
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return LoginPage();
                          }));
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
