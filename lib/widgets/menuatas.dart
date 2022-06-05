import 'package:flutter/material.dart';

Expanded atas1() {
  return Expanded(
      child: Column(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: TextFormField(
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            labelText: 'Enter your username',
          ),
        ),
      ),
    ],
  ));
}

Container atas2() {
  return Container(
      margin: const EdgeInsets.only(top: 30.0),
      //color: Color.fromARGB(255, 240, 3, 3),
      child: Column(
        children: [Text("E-Pasar")],
      ));
}

class Menuatas extends StatelessWidget {
  const Menuatas({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 10.0, left: 5.0),
        //color: Color.fromARGB(255, 240, 3, 3),
        child: Column(
          children: [
            Image.asset(
              'images/logo.png',
              height: 50,
              width: 50,
            ),
          ],
        ));
  }
}
