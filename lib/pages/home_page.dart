import 'dart:convert';

import 'package:catalog_app/models/catalog.dart';
import 'package:catalog_app/pages/drawer_page.dart';
import 'package:catalog_app/widget/item_idget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    var catalogJson = await rootBundle.load('assets/files/catalog.json');
    var decodedData = jsonDecode(catalogJson.toString());
    var productsData = decodedData["products"];
    CatalogModel.item = List.from(productsData)
        .map<Items>((item) => Items.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Catalog App"),
        ),
        drawer: MyDrawer(),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
              itemCount: CatalogModel.item.length,
              itemBuilder: (context, index) {
                return ItemWidget(
                  items: CatalogModel.item[index],
                );
              }),
        ));
  }
}
