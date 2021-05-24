import 'package:flutter/material.dart';
import 'SecondPage.dart';

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[900],
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SecondPage();
              }));
            },
          ),
          title: Image(
            image: AssetImage('assets/image/logo.png'),
            width: 100,
          ),
        ),
        body: Container(
          //color: Colors.grey[900],
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/image/bg_thirdpage.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          padding: EdgeInsets.all(20),
          child: ListView(
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Text(
                  "Burgerkill Guncang Wacken Open Air Jerman",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                width: 300,
                height: 200,
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: Image(
                  image: AssetImage('assets/image/bk_thirdpage.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                children: <Widget>[
                  Container(
                    width: 411,
                    height: 800,
                    padding: EdgeInsets.all(5),
                    color: Colors.black54,
                    child: Text(
                      "REPUBLIKA.CO.ID, JAKARTA -- Burgerkill, band metal di Indonesia tampil memukau pengunjung Wacken Open Air, pagelaran festival musik metal terbesar di Jerman, dan salah satu terbesar di dunia di Wacken, Jerman Utara, akhir pekan. Partisipasi band dari Indonesia meskipun tampil pertama kalinya sebagai pendatang baru, namun penampilannya mampu menyita perhatian pecinta dan pemerhati musik metal, demikian Pensosbud KJRI Hamburg, Indri Rasad kepada Antara London, Senin (3/8). Burgerkill memilik fans di Jerman, meskipun nun jauh dari tanah air, sapaan fans serta sautan berulang kali we want more dan Burgerkill dari sekitar 500 mania metal memberikan kehangatan dan semangat di tengah suhu di bawah 10 derajat Celcius. Partisipasi Burgerkill di Wacken Open Air patut dibanggakan, tidak saja dalam konteks perjuangan band Burgerkill yang dibentuk di Ujungberung, tahun 1995, tetapi berhasil menembus pentas dunia. Burgerkill tahun 2013 berhasil meraih penghargaan di ajang Golden Gods 2013 Metal Hammer di Inggris, dan popularitasnya juga mencapai Jerman. Direncanakan Burgerkill akan tampil di festival 'Bloodstock Open Air', pada 6-9 Agustus 2015 di Inggris. Wacken Open Air sendiri merupakan salah satu ajang festival musik metal terbesar dunia. Pertama kali diadakan pada tahun 1990 dan diikuti 6 (enam) band lokal dan sekitar 800 penonton dengan hanya satu panggung yang dibuat secara swadaya. Lebih dari 80 band dari mancanegara naik pentas di tujuh panggung berbeda, sementara Band metal kelas dunia Dream Theater dan Judas Priest juga tampil di Wacken Open Air 2015. Dalam jamuan yang dihadiri komunitas musik masyarakat Indonesia di Hamburg, Konjen RI, Ibu Sylvia Arifin menyambut baik upaya 'go international' Burgerkill, dan mengingatkan sebagai Duta Musik Indonesia, Burgerkill diharapkan mampu mengharumkan nama bangsa dan negara.",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
