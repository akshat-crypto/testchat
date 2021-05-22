import 'package:chat1/home.dart';
import 'package:flutter/material.dart';

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 5,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            /*DrawerHeader(
              child: Image(
                image: AssetImage('images/logo1.jpg'),
                fit: BoxFit.fill,
              ),
            ),*/
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/logo1.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Home(),
                  ),
                  (Route<dynamic> route) => false,
                );
              },
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.bookmark_border),
              title: Text('Resource'),
              onTap: () {},
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.location_city),
              title: Text('Virtual Tour'),
              onTap: () {},
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.list),
              title: Text('SMPs List'),
              onTap: () {},
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.arrow_back),
              title: Text('Back'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
