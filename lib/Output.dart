import 'package:flutter/material.dart';

class OutputAPK extends StatelessWidget {
  OutputAPK(
    {
      @required this.nama,
      @required this.alamat,
      @required this.pokokpinjaman,
      @required this.bungapinjaman,
      @required this.durasi
    }
  );

  final int pokokpinjaman;
  final int bungapinjaman;
  final int durasi;
  final String nama;
  final String alamat;

  @override
  Widget build(BuildContext context) {
    double jumlahPokok = pokokpinjaman - (pokokpinjaman * bungapinjaman * durasi) / 100;
    double jumlahbunga = (jumlahPokok / pokokpinjaman);
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        centerTitle: true,
        title: Text ('DATA HASIL PENJUAL'),
        bottom: PreferredSize(
            child: Container(
              color: Colors.grey,
              height: 4.0,
            ),
            preferredSize: null),
      ),

      body: Center(
        child: Column(
          children: <Widget>[


            Container(
              padding: EdgeInsets.all(4),
              color: Colors.grey,
            ),

            Container(
              margin: EdgeInsets.only(top: 15),
              padding: EdgeInsets.only(left: 10, right: 10, bottom: 5),
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.black,
                    width: 5,
                  )
                ),

                child: Column(
                  children: <Widget>[
                    Container(
                      child: Text(
                        'HASIL KARYAWAN',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17.0,
                            fontWeight: FontWeight.w600),
                      ),
                      padding: EdgeInsets.only(left: 70, right: 50, top:5, bottom:5 ),
                    ),
                    
                    Text(
                      "Nama",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    
                    Text(
                      "$nama",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w800,
                          color: Colors.white),
                    ),

                    Text(
                      "Nama Barang",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w800,
                      ),
                    ),

                    Text(
                      "$alamat",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w800,
                          color: Colors.white),
                    ),

                    Text(
                      "Harga",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w800,
                      ),
                    ),

                    Text(
                      "$pokokpinjaman",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w800,
                          color: Colors.white),
                    ),

                    Text(
                      "Upah Didapatkan",
                      style: TextStyle(
                          fontSize: 17, fontWeight: FontWeight.w800),
                    ),

                    Text(
                      "$bungapinjaman%",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w800,
                          color: Colors.white),
                    ),

                    Text(
                      "Durasi Penjualan",
                      style: TextStyle(
                          fontSize: 17, fontWeight: FontWeight.w800),
                    ),

                    Text(
                      "$durasi Hari",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w800,
                          color: Colors.white),
                    ),

                     Text(
                      "Total Upah ",
                      style: TextStyle(
                          fontSize: 17, fontWeight: FontWeight.w800),
                    ),

                    Text(
                      "$jumlahbunga",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w800,
                          color: Colors.white),
                    ),


                    Text(
                      "Biaya yang didapatkan",
                      style: TextStyle(
                          fontSize: 17, fontWeight: FontWeight.w800),
                    ),

                    Text(
                      "$jumlahPokok",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w800,
                          color: Colors.white),
                    )
                  ],
                )
              ),
              
              Container(
              margin: EdgeInsets.only(left: 60, right: 60,top:20, bottom: 20),
              child: RaisedButton(
                 onPressed: () {
                    Navigator.pop(context);
                  },
                padding: EdgeInsets.only(top: 5, bottom: 5),
                color: Colors.white,
                child: Text(
                  'Kembali',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
