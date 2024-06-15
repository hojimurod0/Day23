import 'package:uyishi/models/item_widget.dart';



class ItemController {
  List<ItemModel> getItems(int count) {
    return List.generate(count, (index) => ItemModel(index));
  }
}