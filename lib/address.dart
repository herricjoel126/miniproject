import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({ Key? key }) : super(key: key);

  get nameController => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Address"),
      ),
      body: Padding(padding: EdgeInsets.all(10),
      child: ListView(
        children:<Widget> [
          Container(
            padding: EdgeInsets.all(9),
            child: TextField(
              controller: nameController,
              decoration: InputDecoration(border: OutlineInputBorder(),labelText: 'Address 1'),
            ),
          ),
          Container(
            padding: EdgeInsets.all(9),
            child: TextField(
              controller: nameController,
              decoration: InputDecoration(border: OutlineInputBorder(),labelText: 'Address 2'),
            ),
          ),
          Container(
            padding: EdgeInsets.all(9),
            child: TextField(
              controller: nameController,
              decoration: InputDecoration(border: OutlineInputBorder(),labelText: 'PIN Code'),
            ),
          ),
          Container(
            padding: EdgeInsets.all(9),
            child: TextField(
              controller: nameController,
              decoration: InputDecoration(border: OutlineInputBorder(),labelText: 'Mobile Number'),
            ),
          ),
           Padding(
              padding: const EdgeInsets.all(45.0),
              child: ElevatedButton(onPressed:(){
                
                }, child: Text("Submit")),
            ),
        ],
      )
     
          
    ));
  }
}