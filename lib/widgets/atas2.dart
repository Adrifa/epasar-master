/*
import 'package:flutter/material.dart';

class Atas extends StatefulWidget {
  // final Kontak? kontak;

  @override
  _AtasState createState() => _AtasState();
}

class _AtasState extends State<Atas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color.fromARGB(255, 85, 226, 4),
            Color.fromARGB(255, 96, 167, 3),
          ],
        )),
        height: 150,
        child: Row(
          //crossAxisAlignment: CrossAxisAlignment.start,

          mainAxisAlignment: MainAxisAlignment.spaceAround,

          children: <Widget>[
            Container(
                margin: const EdgeInsets.only(top: 30.0, left: 30.0),
                //color: Color.fromARGB(255, 240, 3, 3),
                child: Column(
                  children: [
                    Image.asset(
                      'images/logo.png',
                      height: 50,
                      width: 50,
                    ),
                  ],
                )),
            Container(
                margin: const EdgeInsets.only(top: 40.0),
                //color: Color.fromARGB(255, 240, 3, 3),
                child: Column(
                  children: [Text("E-Pasar")],
                )),
            Expanded(
                child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Enter your username',
                    ),
                  ),
                ),
              ],
            )),
            Container(
                margin: const EdgeInsets.only(top: 30.0, left: 30.0),
                //color: Color.fromARGB(255, 240, 3, 3),
                child: Column(
                  children: [
                    Image.asset(
                      'images/logo.png',
                      height: 50,
                      width: 50,
                    ),
                  ],
                )),
          ],
        ),
      ),
    ));
  }
}
*/