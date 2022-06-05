import 'package:epasar/widgets/menuatas.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:epasar/page/page2.dart';

// ignore_for_file: prefer_const_constructors
class Page1 extends StatefulWidget {
  // final Kontak? kontak;

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  String? countryName;
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Container(
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
              height: 100,
              child: Row(
                //crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Menuatas(),
                  atas2(),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                      child: Column(
                    children: [
                      DropdownSearch<String>(
                        mode: Mode.MENU,
                        showSelectedItems: true,
                        //country data as item
                        items: [
                          "Jilbab",
                          "Jilbab Pasmina",
                          "Jilbab Segi Empat"
                        ],

                        //you can design input decroration here as you want
                        dropdownSearchDecoration: InputDecoration(
                          labelText: "",
                          hintText: "Cari Produk",
                        ),

                        //what you can after clicked item
                        onChanged: (text) {
                          setState(() {
                            countryName = text;
                          });
                        },
                        showSearchBox: true,
                      ),
                    ],
                  )),
                  SizedBox(
                    width: 15,
                  ),
                  //atas3(),
                  Container(
                    margin: const EdgeInsets.only(top: 10.0, right: 10),
                    child: Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            _showSimpleDialog(context);
                          },
                          child: Icon(
                            Icons.supervised_user_circle_rounded,
                            color: Color.fromARGB(255, 255, 255, 255),
                            size: 30.0,
                          ),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Color.fromARGB(255, 73, 243, 6)),
                              padding:
                                  MaterialStateProperty.all(EdgeInsets.all(0)),
                              textStyle: MaterialStateProperty.all(
                                  TextStyle(fontSize: 0))),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )),
            Container(
                margin: const EdgeInsets.only(top: 10.0, left: 5.0),
                //color: Color.fromARGB(255, 240, 3, 3),
                child: Column(
                  children: [
                    Image.asset(
                      'images/logo.png',
                      height: 150,
                      width: 150,
                    ),
                  ],
                )),
            Container(
                margin: const EdgeInsets.only(top: 10.0, left: 5.0),
                //color: Color.fromARGB(255, 240, 3, 3),
                child: Column(
                  children: [
                    const Text(
                      'Berita Pasar',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    )
                  ],
                )),
            Container(
                margin: const EdgeInsets.only(top: 10.0, left: 5.0),
                //color: Color.fromARGB(255, 240, 3, 3),
                child: Row(
                  children: [
                    Container(
                        margin: const EdgeInsets.only(top: 10.0, left: 30.0),
                        //color: Color.fromARGB(255, 240, 3, 3),
                        child: Row(
                          children: [
                            Container(
                                margin: const EdgeInsets.only(top: 0.0),
                                width: 140,
                                //color: Color.fromARGB(255, 240, 3, 3),
                                child: Column(
                                  children: [
                                    Image.network(
                                      'https://pdiperjuangan-jatim.com/wp-content/uploads/2020/07/pdip-jatim-pasar-besar-kota-batu.jpg',
                                      height: 130,
                                      width: 140,
                                    ),
                                    const Text(
                                      'Persiapan Revitalisasi Pasar Besar Kota Batu di-Deadline 100 Hari',
                                      style: TextStyle(fontSize: 12),
                                    )
                                  ],
                                )),
                            SizedBox(
                              width: 50,
                            ),
                            Container(
                                margin: const EdgeInsets.only(top: 0.0),
                                width: 140,
                                //color: Color.fromARGB(255, 240, 3, 3),
                                child: Column(
                                  children: [
                                    Image.network(
                                      'https://risetcdn.jatimtimes.com/images/2021/12/03/Pasar-Besar-Kota-Batu.-Foto-Irsya-RichaMalangTIMES-P.jpeg04dba695558d04c7.md.jpg',
                                      height: 130,
                                      width: 140,
                                    ),
                                    const Text(
                                      'Pasar Besar Kota Batu Terjual Rp 2,1 Miliar, Rekanan Dipersilakan Bongkar Bangunan',
                                      style: TextStyle(fontSize: 12),
                                    )
                                  ],
                                )),
                          ],
                        )),
                  ],
                )),
            Container(
                margin: const EdgeInsets.only(top: 10.0, left: 30.0),
                //color: Color.fromARGB(255, 240, 3, 3),
                child: Column(
                  children: [
                    const Text(
                      'Denah Pasar',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    )
                  ],
                )),
            Container(
                margin:
                    const EdgeInsets.only(top: 0.0, left: 10.0, right: 10.0),
                //color: Color.fromARGB(255, 240, 3, 3),
                width: 600,
                child: Column(
                  children: [
                    Image.network(
                        'https://akcdn.detik.net.id/community/media/visual/2022/02/09/pasar-batu-1_43.jpeg?w=480',
                        height: 200,
                        fit: BoxFit.fill),
                  ],
                )),
          ],
        ),
      ),
    ));
  }
}

void _showSimpleDialog(context) {
  showDialog(
    context: context,
    builder: (context) {
      return SimpleDialog(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10, left: 80.0),
            child: Row(children: [
              Image.asset(
                'images/logo.png',
                height: 100,
                width: 100,
              ),
            ]),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "Username",
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
            child: TextField(
              style: new TextStyle(
                  fontSize: 14.0, height: 1.0, color: Colors.black),
              decoration: new InputDecoration(
                hintText: "Input Username",
                border: OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(3.0)),
                contentPadding: const EdgeInsets.symmetric(
                    vertical: 14.0, horizontal: 15.0),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "Password",
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
            child: TextField(
              style: new TextStyle(
                  fontSize: 14.0, height: 1.0, color: Colors.black),
              decoration: new InputDecoration(
                hintText: "Input Password",
                border: OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(3.0)),
                contentPadding: const EdgeInsets.symmetric(
                    vertical: 14.0, horizontal: 15.0),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0),
            child: RaisedButton(
              color: Colors.blue,
              child: Text(
                "Login",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {},
            ),
          ),

           Padding(
            padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0),
            child: RaisedButton(
              color: Colors.blue,
              child: Text(
                "Halaman Toko",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Page2()));
              },           
            ),
          ),

        ],
      );
    },
  );
}
