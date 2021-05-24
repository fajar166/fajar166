import 'package:flutter/material.dart';
import 'SecondPage.dart';
import 'AboutPage.dart';
import 'LoginPage.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: Image(
          image: AssetImage('assets/image/logo.png'),
          width: 100,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.login_rounded),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return LoginPage();
              }));
            },
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/image/bg.jpeg'),
          fit: BoxFit.fill,
        )),
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Container(
              width: 411,
              height: 200,
              padding: EdgeInsets.all(5),
              color: Colors.grey,
              child: Image(
                image: AssetImage('assets/image/musick.png'),
              ),
            ),
            Container(
              width: 411,
              height: 100,
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.all(5),
              color: Colors.black54,
              child: Text(
                'Selamat Datang Di Aplikasi Noear, Sebuah Aplikasi Berita Musik Yang Masih Sangat Sederhana. Aplikasi Ini Akan Terus Dikembangkan Supaya Mnejadi Lebih Baik.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
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
