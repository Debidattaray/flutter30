import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:myapp1/pages/Login_Page.dart';
import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const name({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.purple),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/Login",
      routes: {
        "/" : (context) => MyHomePage(),
        "/Login": (contex) => LoginPage(),
      },
      // home: MyHomePage(),
    );
  }
}
