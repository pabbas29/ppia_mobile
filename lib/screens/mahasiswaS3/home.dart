import 'package:flutter/material.dart';
import 'package:ppia_mobile/objects/mahasiswaS3.dart';

class ListMahasiswaS3 extends StatefulWidget {
  @override
  _ListMahasiswaS3State createState() => _ListMahasiswaS3State();
}

class _ListMahasiswaS3State extends State<ListMahasiswaS3> {

  final List<MahasiswaS3> mahasiswas = [
    MahasiswaS3('Yulianti'),
    MahasiswaS3('Musthofa Ridho'),
    MahasiswaS3('Syarah Susan'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Mahasiswa S3'),
        backgroundColor: Colors.purple,
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.menu), 
            color: Colors.white,
            onPressed: () {}
          )
        ],
      ),
      body: ListView.builder(
        itemCount: mahasiswas.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(mahasiswas[index].getNamaLengkap()),
            contentPadding: null,
          );
        })
    );
  }
}