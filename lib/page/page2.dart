import 'package:epasar/widgets/menuatas.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';

// ignore_for_file: prefer_const_constructors
class Page2 extends StatefulWidget {
  // final Kontak? kontak;

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
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
                margin: const EdgeInsets.only(top: 50.0, left: 5.0),
                //color: Color.fromARGB(255, 240, 3, 3),
                alignment: Alignment.topLeft,
                child: Column(
                  children: [
                    const Text(
                      'Toko Jilbab Makmur',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    const Text(
                      'Pasar Blok B No 5 - Konveksi dan Pakaian',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
                    ),
                  ],
                )),
             for(var i = 0; i< 4; i++)    
            Container(
                margin: const EdgeInsets.only(top: 10.0, left: 0.0),
                //color: Color.fromARGB(255, 240, 3, 3),
                alignment: Alignment.topLeft,
                child: Row(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Image.network(
                            'https://fitinline.com/data/article/20190513/Pashmina-001.jpg',
                            height: 100,
                            width: 100,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 4),
                    Flexible(   
                        child: Text.rich(                        
                          TextSpan(
                            children: <TextSpan>[                            
                              TextSpan(
                                  text: 'Pashmina Sifon \n',
                                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                              TextSpan(                              
                                  text: 'Bahan : serat sintetis, sutra, dan kapas \nUkuran 175xa50(sudah di plisket) 175x80 (sebelum di plisket) \n\n Pashmina sifon juga tidak direkomendasikan untuk digunakan dengan bahan lainnya. Meskipun demikian, pashmina jenis ini sangat cocok digunakan untuk kamu yang senang dengan kerudung bahan jatuh, ringan, dan tentunya anti lecek.'),
                            ],
                            style: TextStyle(height: 1, fontSize: 10)
                          ),
                      ),
                    ),
                   
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
          )
        ],
      );
    },
  );
}
