import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> widgetsdata = [];
  int counter = 1;

  void tambah() {
    setState(() {
      widgetsdata.add(Text(
        "Data ke-" + counter.toString(),
        style: TextStyle(fontSize: 20),
      ));
      counter++;
    });
  }

  void hapus(){
    setState(() {
      widgetsdata.removeLast();
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Belajar list View"),
        ),
        body: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                RaisedButton(
                  child: Text("Tambah"),
                  onPressed: tambah,
                ),
                RaisedButton(
                  child: Text("Hapus"),
                  onPressed: hapus,
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: widgetsdata,
            )
          ],
        ),
      ),
    );
  }
}
