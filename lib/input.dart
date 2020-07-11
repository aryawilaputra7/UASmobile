import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:uasbunga/ui/note.dart';

import 'Output.dart';
import 'about_me.dart.';


class InputData extends StatefulWidget {
  @override
  _InputDataState createState() => _InputDataState();
}

class _InputDataState extends State<InputData> {
  TextEditingController nama = TextEditingController();
  TextEditingController alamat = TextEditingController();
  int pokok = 0;
  int bunga = 0;
  int hari = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('COD.COM'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.note_add, color: Colors.black, size: 34),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Note()),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
 
            
            Container(
                margin: EdgeInsets.only(top: 5),
                padding: EdgeInsets.all(5),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                    height: 22,
                  ),
                    TextField(
                      controller: nama,
                      decoration: InputDecoration(
                        labelText: "Nama Karyawan",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    SizedBox(
                    height: 22,
                  ),
                    TextField(
                      controller: alamat,
                      decoration: InputDecoration(
                        labelText: "Nama Barang",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    SizedBox(
                    height: 22,
                  ),
                    TextField(
                      onChanged: (txt) {
                        setState(() {
                          pokok = int.parse(txt);
                        });
                      },
                      style: TextStyle(
                        fontSize: 15,
                      ),
                      decoration: InputDecoration(
                          labelText: "Harga (Rp.)",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          hintText: 'Harga'),
                    ),
                    
                    SizedBox(
                    height: 22,
                  ),
                    TextField(
                      onChanged: (txt) {
                        setState(() {
                          bunga = int.parse(txt);
                        });
                      },
                      style: TextStyle(
                        fontSize: 15,
                      ),
                      decoration: InputDecoration(
                          labelText: "Upah Karyawan (%)",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          hintText: '%'),
                    ),
                    
                    SizedBox(
                    height: 22,
                  ),
                    TextField(
                      onChanged: (txt) {
                        setState(() {
                          hari = int.parse(txt);
                        });
                      },
                      style: TextStyle(
                        fontSize: 15,
                      ),
                      decoration: InputDecoration(
                          labelText: "Durasi Penjualan (/hari)",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          hintText: 'hari'),
                    ),
                  ],
                )),
            Container(
              margin: EdgeInsets.only(left: 70, right: 70, bottom: 20),
              child: RaisedButton(
                onPressed: () {
                  _sendDataTobmiResult(context);
                },
                padding: EdgeInsets.only(top: 5, bottom: 5),
                color: Colors.grey,
                child: Text(
                  'TAMBAH',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: RaisedButton(
          color: Colors.black,
          child: Text(
            'Admin Info',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyProfil()),
            );
          },
        ),
      ),
    );
  }

  void _sendDataTobmiResult(BuildContext context) {
    String textToSend = nama.text;
    String text = alamat.text;
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => OutputAPK(
                  nama: textToSend,
                  alamat: text,
                  pokokpinjaman: pokok,
                  bungapinjaman: bunga,
                  durasi: hari,
                )
              )
            );
  }
}
