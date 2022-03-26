import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("YUYUN PURNIAWAN"),
        ),
        body: GridView.count(
          padding: EdgeInsets.all(20),
          crossAxisCount: 5,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          children: <Widget>[
            boxsquare("One", Color.fromARGB(255, 187, 222, 218)),
            boxsquare("Two", Color.fromARGB(255, 145, 201, 196)),
            boxsquare("Three", Color.fromARGB(255, 106, 180, 171)),
            boxsquare("Four", Color.fromARGB(255, 82, 163, 153)),
            boxsquare("Five", Color.fromARGB(255, 12, 112, 112)),
            boxsquare("Six", Color.fromARGB(255, 48, 23, 194)),
            boxsquare("Seven", Color.fromARGB(255, 148, 53, 172)),
            boxsquare("Eight", Color.fromARGB(255, 19, 156, 104)),
            boxsquare("Nine", Color.fromARGB(255, 165, 9, 9)),
            boxsquare("Ten", Colors.amber),
          ],
        ),
      ),
    );
  }
}

class boxsquare extends Container {
  String xstring = "Default";
  Color warna = Colors.black;

  boxsquare(String xsting, Color warna) {
    this.xstring = xsting;
    this.warna = warna;
  }

  @override
  // TODO: implement padding
  EdgeInsetsGeometry? get padding => EdgeInsets.all(8);

  @override
  // TODO: implement color
  Color? get color => warna;

  @override
  // TODO: implement child
  Widget? get child => Text(xstring);
}
