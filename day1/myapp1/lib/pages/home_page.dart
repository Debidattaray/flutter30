import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp1/models/catalog.dart';
import 'package:myapp1/models/catalog.dart';
import 'package:myapp1/widgets/drawer.dart';
import 'package:myapp1/widgets/item_widget.dart';
import 'dart:convert';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogjson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogjson);
    var productData = decodedData["products"];
    CatalogModel.items =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty) ? 
        ListView.builder(
          // itemCount: CatalogModel.item.length,
          itemCount: CatalogModel.items.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: CatalogModel.items[index],
            );
          },
        ):Center(child: CircularProgressIndicator(),),
      ),
      drawer: MyDrawer(),
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
