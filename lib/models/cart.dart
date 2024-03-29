import 'package:prasun_bhattacharya_app/core/store.dart';
import 'package:prasun_bhattacharya_app/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class CartModel {
  // catalog field
  late CatalogModel _catalog;

  // Collection of Ids - store Ids of each item
  final List<int> _itemIds = [];

  // get Catalog
  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  // Get items in the cart
  List<Item> get items => _itemIds.map((id) => _catalog.getbyId(id)).toList();

  // Get Total Price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

}

class AddMutation extends VxMutation<MyStore> {
  final Item item;

  AddMutation(this.item);
  @override
  perform() {
    store?.cart._itemIds.add(item.id);
  }
}

class RemoveMutation extends VxMutation<MyStore> {
  final Item item;

  RemoveMutation(this.item);
  @override
  perform() {
    store?.cart._itemIds.remove(item.id);
  }
}
