import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:ppia_mobile/components/navdrawer.dart';
import 'package:ppia_mobile/objects/mahasiswaS3.dart';

class ListMahasiswaS3 extends StatefulWidget {
  @override
  _ListMahasiswaS3State createState() => _ListMahasiswaS3State();
}

class _ListMahasiswaS3State extends State<ListMahasiswaS3> {

  List<MahasiswaS3> mahasiswas = List();
  var isLoading = false;

  void fetchMahasiswaS3() async {
    setState(() {
      isLoading = true;
    });

    final response =
        await http.get('http://aplikasi.fe.ui.ac.id/ppia/api/mahasiswa/S3/read.php?AuthToken=');
    if (response.statusCode == 200) {
      mahasiswas = (json.decode(response.body) as List)
        .map((data) => new MahasiswaS3.fromJson(data))
        .toList();
      setState(() {
        isLoading = false;
      });
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchMahasiswaS3();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Mahasiswa S3'),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
      drawer: NavDrawer(),
      body: isLoading ? Center(
        child: CircularProgressIndicator(),
        ) 
        : ListView.builder(
        itemCount: mahasiswas.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              title: new Text(mahasiswas[index].namaLengkap),
              subtitle: new Text(mahasiswas[index].npm),
              contentPadding: null,
              onTap: null, //Tap will direct to detail screen
            )
          );
        }
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {}
      ),
    );
  }
}