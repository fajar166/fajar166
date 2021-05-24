import 'package:flutter/material.dart';
import 'MainPage.dart';
import 'SecondPage.dart';

class AboutPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<AboutPage> {
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
            Container(
              width: 411,
              height: 100,
              margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
              padding: EdgeInsets.all(5),
              color: Colors.black54,
              child: Center(
                child: Text(
                  'Noear Merupakan Sebuah Aplikasi Berita Musik Berbasis Android.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Column(
              children: <Widget>[
                Container(
                  width: 411,
                  height: 200,
                  padding: EdgeInsets.all(5),
                  color: Colors.black54,
                  child: Text(
                    "Credit : Channel Youtube 'Erico Darmawan Handoyo'. 'Dosen Mobile Programming'. 'Asisten Praktikum Mobile programming. 'https://www.codingtive.com/2019/06/tutorial-flutter-cara-membuat-drawer-mudah-dan-lengkap.html'. 'https://medium.com/scrum-booster/mari-belajar-membuat-sidebar-drawer-pada-flutter-77e2b5cf78ea'. 'https://www.republika.co.id/berita/nsjj3o359/burgerkill-guncang-wacken-open-air-festival-jerman.'",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
            Container(
              width: 411,
              height: 100,
              margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
              padding: EdgeInsets.all(5),
              color: Colors.black54,
              child: Center(
                child: Text(
                  'Copyright By Muhammad Fajar Ramdhani.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
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
