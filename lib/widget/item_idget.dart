import 'package:catalog_app/models/catalog.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {

  final Items items;
  // ignore: unnecessary_null_comparison
  const ItemWidget({Key? key,required this.items}) :super(key: key);


  @override
  Widget build(BuildContext context) {
    return Card(
      shape: StadiumBorder(),
      margin: EdgeInsets.zero,
      child: ListTile(
        leading: Image.network(items.image),
        title: Text(items.name),
        subtitle: Text(items.desc),
        trailing: Text(items.price.toString()),
      ),
    );
  }
}
