import 'package:flutter/material.dart';
import 'package:ppia_mobile/components/navdrawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pusat Data PPIA'),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      drawer: NavDrawer(),
      body: Center(
        child: Image.asset('images/logoppia.png'),
      )
    );
  }
}