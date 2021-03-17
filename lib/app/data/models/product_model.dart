class ProductModel {
  late String id;
  late String name;
  late String description;
  late double price;

  ProductModel({required this.id, required this.name, required this.description, required this.price});

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json.containsKey('id') ? json["id"] : "";
    name = json.containsKey('name') ? json["name"] : "";
    description = json.containsKey('description') ? json["id"] : "";
    price = json.containsKey('price') ? json["price"] : 0.0;
  }
}
