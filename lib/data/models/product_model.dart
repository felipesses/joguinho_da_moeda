class ProductModel {
  late String id;
  late String name;
  late String description;
  late String price;
  late String imgUrl;

  ProductModel(
      {required this.id,
      required this.name,
      required this.imgUrl,
      required this.description,
      required this.price});

  ProductModel.fromJson(Map<dynamic, dynamic> json) {
    id = json.containsKey('id') ? json["id"] : "";
    name = json.containsKey('name') ? json["name"] : "";
    imgUrl = json.containsKey('imgUrl') ? json["imgUrl"] : "";
    description = json.containsKey('description') ? json["id"] : "";
    price = json.containsKey('price') ? json["price"] : "";
  }
}
