import 'package:chat1/drawer.dart';
import 'package:chat1/scaffoldbody.dart';
import 'package:chat1/services/auth.dart';
import 'package:chat1/signin.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: SideDrawer(),
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text('360SMP'),
          actions: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Icon(Icons.notifications),
            ),
            InkWell(
              onTap: () {
                AuthMethods().signOut().then((s) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => SignIn()),
                  );
                });
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Icon(Icons.logout),
              ),
            ),
          ],
        ),
        body: ScaffoldBody(),
      ),
    );
  }
}
