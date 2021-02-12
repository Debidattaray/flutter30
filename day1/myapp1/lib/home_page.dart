
import 'package:flutter/material.dart';
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return Scaffold(

      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to Body"),
        ),
      ),
      drawer: Drawer(),

    );
    // int days = 20;
    // String name = "codepur";
    // double dd = 1.2;
    // num aa = 9.0;
    // var day = 2;
    // const pi = 3.14;
    // final additionAllowed = 7;


    // return MaterialApp(
    //   home: Material(
    //     child: Center(
    //       child: Container(
    //         child: Text("Welcome to $days one of ($name,$dd,$aa,$day,$pi,$additionAllowed) flutter gittt"),
    //       ),
    //     ),
    //   ),
    // );
  }
}
