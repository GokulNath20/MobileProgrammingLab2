// ignore_for_file: deprecated_member_use, missing_required_param

import 'package:flutter/material.dart';
import 'package:logindemo/main.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Bouquet Delivery Sepang"),
        backgroundColor: Colors.pink,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Center(
                child: Container(
                    width: 350,
                    height: 180,
                    child: Image.asset('asset/images/registerimage.png')),
              ),
            ),
            const Text(
              "Register Page",
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Colors.pink,
                  fontSize: 30),
            ),
            Padding(
              //padding: const EdgeInsets.only(top: 0),
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              child: Container(
                height: 45,
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Name',
                      hintText: 'Please enter your name'),
                ),
              ),
            ),
            Padding(
              //padding: const EdgeInsets.only(top: 0),
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              child: Container(
                height: 45,
                width: 300,
                child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Phone Number',
                        hintText: 'Enter valid phone number'),
                    keyboardType: TextInputType.number),
              ),
            ),
            Padding(
              //padding: const EdgeInsets.only(top: 0),
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              child: Container(
                height: 45,
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                      hintText: 'john@example.com'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 10),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                height: 45,
                width: 300,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Enter secure password'),
                ),
              ),
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.pinkAccent,
                  borderRadius: BorderRadius.circular(20)),
              child: FlatButton(
                onPressed: () {
                  //TODO FORGOT PASSWORD SCREEN GOES HERE
                },
                child: Text(
                  'Register Now',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            Text('Already have an account?'),
            FlatButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => LoginDemo()));
              },
              child: Text(
                'Login',
                style: TextStyle(color: Colors.blue, fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
