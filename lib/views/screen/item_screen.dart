import 'package:flutter/material.dart';
import 'package:uyishi/controllers/item_controller.dart';
import 'package:uyishi/views/widget/item_widget.dart';


class ListScreen extends StatelessWidget {
  final ItemController _controller = ItemController();

  @override
  Widget build(BuildContext context) {
    final items = _controller.getItems(1000);

    return Scaffold(
      appBar: AppBar(title: Text('List View')),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ItemWidget(item: items[index]);
        },
      ),
    );
  }
}