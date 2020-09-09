import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'BUGÜN NE YESEM',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: YemekSayfasi(),
      ),
    );
  }
}

class YemekSayfasi extends StatefulWidget {
  @override
  _YemekSayfasiState createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  int corbaID = 1, yemekID = 1, tatliID = 1;
  List<String> corbaAdlari = [
    'Mercimek',
    'Tarhana',
    'Tavuksuyu',
    'Düğüm Çorbası',
    'Yoğurtlu Çorba'
  ];
  List<String> yemekAdlari = [
    'Karnıyarık',
    'Mantı',
    'Kuru Fasulye',
    'İçli Köfte',
    'Izgara Balık'
  ];
  List<String> tatliAdlari = [
    'Kadayıf',
    'Baklava',
    'Sütlaç',
    'Kazandibi',
    'Dondurma'
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: FlatButton(
                highlightColor: Colors.white,
                splashColor: Colors.white,
                onPressed: menuGetir,
                child: Image.asset('assets/images/corba_$corbaID.jpg'),
              ),
            ),
          ),
          Text(
            corbaAdlari[corbaID - 1],
            style: TextStyle(fontSize: 21),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: FlatButton(
                highlightColor: Colors.white,
                splashColor: Colors.white,
                onPressed: menuGetir,
                child: Image.asset('assets/images/yemek_$yemekID.jpg'),
              ),
            ),
          ),
          Text(
            yemekAdlari[yemekID - 1],
            style: TextStyle(
              fontSize: 21,
            ),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: FlatButton(
                highlightColor: Colors.white,
                splashColor: Colors.white,
                onPressed: menuGetir,
                child: Image.asset('assets/images/tatli_$tatliID.jpg'),
              ),
            ),
          ),
          Text(
            tatliAdlari[tatliID - 1],
            style: TextStyle(fontSize: 21),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 10,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }

  void menuGetir() {
    setState(() {
      var rand = Random();
      corbaID = 1 + rand.nextInt(5);
      tatliID = 1 + rand.nextInt(5);
      yemekID = 1 + rand.nextInt(5);
    });
  }
}
