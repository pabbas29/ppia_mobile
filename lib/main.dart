import 'package:flutter/material.dart';
import 'package:ppia_mobile/screens/common/home.dart';
import 'package:ppia_mobile/screens/mahasiswaS3/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/mahasiswaS3': (context) => ListMahasiswaS3(),
      },
    );
  }
}
