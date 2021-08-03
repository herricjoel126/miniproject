import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({ Key? key }) : super(key: key);

  get nameController => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Account Details"),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 200,
              width: 200,
              child: Image.asset('assets/images/avatar.png')
              ),
              Container(
            padding: EdgeInsets.all(9),
            child: TextField(
              controller: nameController,
              decoration: InputDecoration(border: OutlineInputBorder(),labelText: 'Name'),
            ),
          ),
          Container(
            padding: EdgeInsets.all(9),
            child: TextField(
              controller: nameController,
              decoration: InputDecoration(border: OutlineInputBorder(),labelText: 'Email'),
            ),
          ),
          

          ],
        ),
      ),
      
    );
  }
}