import 'package:chat1/services/auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[Center(child: _signInButton(context))],
    );
  }
}

Widget _signInButton(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('360VirtualSMP'),
      backgroundColor: Colors.grey,
    ),
    body: Stack(
      children: <Widget>[
        Image(
          //image: AssetImage('images/logo2.png'),
          image: AssetImage('images/logo1.jpg'),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.fill,
          //fit: BoxFit.fitHeight,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white.withOpacity(0.8),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.4,
              height: MediaQuery.of(context).size.width * 0.4,
              decoration: BoxDecoration(
                //color: Colors.white,
                borderRadius: BorderRadius.circular(80),
                image: DecorationImage(
                  image: AssetImage('images/logo1.jpg'),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              alignment: Alignment.center,
              //color: Colors.blue,
              child: Text(
                '360 Virtual India\n in Association With\n MNIT SMPs',
                style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            MaterialButton(
              onPressed: () {
                AuthMethods().signInWithGoogle(context);
              },
              color: Colors.grey,
              child: Text(
                'SIGNIN WITH GOOGLE',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
