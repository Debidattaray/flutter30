import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:myapp1/pages/Login_Page.dart';
import 'package:myapp1/utils/routs.dart';
import 'package:myapp1/widgets/thems.dart';
import 'pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const name({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),




      initialRoute: MyRoutes.homeRoute,
      routes: {
        MyRoutes.homeRoute : (context) => MyHomePage(),
        MyRoutes.loginRoute: (contex) => LoginPage(),
      },
      // home: MyHomePage(),
    );
  }
}
