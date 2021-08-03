import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({ Key? key }) : super(key: key);

  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  get nameController => null;

  get passwordController => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
        title: Text('Travel Guide'),
      ),
      body: Padding(padding: EdgeInsets.all(10),
      child: ListView(
        children: <Widget> [
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(10),
            child: Text(
              'SIGN UP ',style: TextStyle(color: Colors.black,fontSize:25.0),
            ),
          ),
          Container(
            padding: EdgeInsets.all(9),
            child: TextField(
              controller: nameController,
              decoration: InputDecoration(border: OutlineInputBorder(),labelText: 'Email'),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextField(
              obscureText: true,
              controller: passwordController,
              decoration: InputDecoration(border: OutlineInputBorder(),labelText: 'Password'),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextField(
              obscureText: true,
              controller: passwordController,
              decoration: InputDecoration(border: OutlineInputBorder(),labelText: 'Confirm Password'),
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(45.0),
              child: ElevatedButton(onPressed:(){
                
                }, child: Text("Sign In")),
            ),
        ],
      ),
      ),
      
    );
  }
}