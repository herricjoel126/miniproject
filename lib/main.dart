import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:project/Third_screen.dart';
import 'package:project/account.dart';
import 'package:project/address.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Travel Guide'),
    );

  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Razorpay _razorpay;
  //_razorpay = Razorpay();
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    _razorpay = Razorpay();
    //_razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    //_razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    //_razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  void openCheckout()  {
    var options = {
      'key': 'rzp_test_DvcEoCuc6uIh6H',
      'amount': 28200,
      'name': 'Joel',
      'description': 'Payment',
      'prefill': {'contact': '50000', 'email': 'test@razorpay.com'},
      'external': {
        'wallets': ['paytm']
      }
    };

    try {
      _razorpay.open(options);
    } catch (e) {
      debugPrint('e');
    }
  }

  get nameController => null;

  get passwordController => null;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Travel Guide'),
      ),
      drawer: Drawer(
        child:Column(children:[
          Divider(thickness: 10,),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(25),
            color: Theme.of(context).primaryColor,
            child: Center(
              child: Column(
                children:<Widget> [
                  Container(
                    width: 170,
                    height: 170,
                      margin: EdgeInsets.only(bottom: 2.0),
                      decoration: new BoxDecoration(
                          image: new DecorationImage(
                            image: new AssetImage("assets/images/avatar.png"),

                          )
                      )
                    ),

                  Text("+919790521743",style: TextStyle(color: Colors.white,fontSize: 22),),
                ],
              )
            ),
          ),
          ListTile(
            title:Text("Home"),
            onTap: () {
             
            },
            trailing: Icon(Icons.home,color: Colors.black,),
          ),
          
          Divider(thickness: 4,color: Colors.green,),
          ListTile(
            title:Text("Address"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>AddressScreen()),);
            },
            trailing: Icon(Icons.location_city,color: Colors.black,),
          ),
          Divider(thickness: 4,color: Colors.green,),
          ListTile(
            title:Text("Account"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>AccountScreen()),);
            } ,
            trailing: Icon(Icons.person,color: Colors.black,),
          ),
          Divider(thickness: 4,color: Colors.green,),
          ListTile(
            title:Text("Logout"),
            onTap: (){
              Navigator.pop(context,MaterialPageRoute(builder: (context)=>MyApp()),);
            },
            trailing: Icon(Icons.logout,color: Colors.black,),
          ),
          Divider(thickness: 4,color: Colors.green,),
        ]) ,),
      body: Padding(padding: EdgeInsets.all(9),
      child: ListView(
        children: <Widget> [
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(9),
            child: Text('Welcome to Travel Guide',style: TextStyle(color: Colors.black,fontSize:25.0),),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.all(9),
            child: Text('Please Login Here',style: TextStyle(fontSize: 19),),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.all(9),
            child: TextField(
              controller: nameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
              ),
            ),
          ),
          Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: (){
                    //forgot password screen
                  },
                  textColor: Colors.black,
                  child: Text('Forgot Password'),
                ),
                Padding(
              padding: const EdgeInsets.all(45.0),
              child: ElevatedButton(onPressed:(){
                
                openCheckout();

              }, child: Text("Login")),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Text('Does not have an account?'),
                  TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return ThirdScreen();

                  }));  
                  },
                   child: Text(
                     'Sign up',style:TextStyle(fontSize: 18),
                   ))
                ],
              ),
            )

        ],
      )
      )

    );
  }
}

