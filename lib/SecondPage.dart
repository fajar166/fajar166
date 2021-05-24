import 'package:flutter/material.dart';
import 'MainPage.dart';
import 'ThirdPage.dart';
import 'AboutPage.dart';

class SecondPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: Image(
          image: AssetImage('assets/image/logo.png'),
          width: 100,
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/image/bg.jpeg'),
          fit: BoxFit.fill,
        )),
        padding: EdgeInsets.all(20),
        child: ListView(
          children: <Widget>[
            // ignore: deprecated_member_use
            RaisedButton(
              child: Image(
                image: AssetImage('assets/image/bk.jpg'),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ThirdPage();
                }));
              },
            ),
            Padding(padding: EdgeInsets.all(20)),
            // ignore: deprecated_member_use
            RaisedButton(
              child: Image(
                image: AssetImage('assets/image/jasad.jpg'),
              ),
              onPressed: () {},
            ),
            Padding(padding: EdgeInsets.all(20)),
            // ignore: deprecated_member_use
            RaisedButton(
              child: Image(
                image: AssetImage('assets/image/seringai.jpg'),
              ),
              onPressed: () {},
            )
          ],
        ),
      ),
      drawer: _buildDrawer(),
    );
  }

  Widget _buildDrawer() {
    return SizedBox(
      width: 300,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Muhammad Fajar Ramdhani | 065118093'),
              accountEmail: Text('ramdhanif790@gmail.com'),
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/image/bg.jpeg'),
                fit: BoxFit.fill,
              )),
            ),
            ListTile(
              title: Row(
                children: <Widget>[
                  Icon(Icons.home),
                  Padding(padding: EdgeInsets.all(5)),
                  Text("Home")
                ],
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return MainPage();
                }));
              },
            ),
            Divider(
              height: 2.0,
            ),
            ListTile(
              title: Row(
                children: <Widget>[
                  Icon(Icons.notifications_active),
                  Padding(padding: EdgeInsets.all(5)),
                  Text("Berita Utama"),
                ],
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SecondPage();
                }));
              },
            ),
            Divider(
              height: 2.0,
            ),
            ListTile(
              title: Row(
                children: <Widget>[
                  Icon(Icons.info),
                  Padding(padding: EdgeInsets.all(5)),
                  Text("Tentang"),
                ],
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return AboutPage();
                }));
              },
            ),
            Divider(height: 2.0),
          ],
        ),
      ),
    );
  }
}
