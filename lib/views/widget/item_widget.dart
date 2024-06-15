import 'package:flutter/material.dart';
import 'package:uyishi/models/item_widget.dart';

class ItemWidget extends StatelessWidget {
  final ItemModel item;

  const ItemWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Item ${item.index}'),
    );
  }
}
