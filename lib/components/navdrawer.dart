import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.purple,
            ),
            child: Text(
              'Header',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              )
            )
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Halaman Depan'),
            onTap: () => Navigator.popAndPushNamed(context, '/')
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text('Mahasiswa S3'),
            onTap: () => Navigator.pushNamed(context, '/mahasiswaS3')
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text('Mahasiswa S2'),
            onTap: () {}
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text('Staf Pengajar'),
            onTap: () {}
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Profile'),
            onTap: () {}
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () {}
          ),
        ],
      )
    );
  }
}