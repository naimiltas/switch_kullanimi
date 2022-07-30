// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool switchKontrol = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Switch(
              value: switchKontrol,
              activeTrackColor: Colors.lightGreenAccent,
              activeColor:  Colors.green,
              inactiveTrackColor: Color.fromARGB(137, 52, 51, 51),
              inactiveThumbColor: Colors.black,
              onChanged: (veri) {
                setState(() {
                  switchKontrol = veri;
                });

                print("Switch : $veri");
              },
            ),
            RaisedButton(
              child: Text("Göster"),
              onPressed: (){
                print("Switch Durum : $switchKontrol");
              },
            )
          ],
        ),
      ),
    );
  }
}
