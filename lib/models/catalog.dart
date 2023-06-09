class CatalogModel {
  static final catalogModel = CatalogModel._internal();
  CatalogModel._internal();
  factory CatalogModel() => catalogModel;

  static List<Item>? items;

  //Get Item by id
  Item getById(num id) => items!.firstWhere((element) => element.id == id);

  //Get Item by position
  Item getByPosition(int pos) => items![pos];
}

class Item {
  final num id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({
    required this.id,
    required this.name,
    required this.desc,
    required this.price,
    required this.color,
    required this.image,
  });

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map["id"],
      name: map["name"],
      desc: map["desc"],
      price: map["price"],
      color: map["color"],
      image: map["image"],
    );
  }

  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "image": image,
      };
}
