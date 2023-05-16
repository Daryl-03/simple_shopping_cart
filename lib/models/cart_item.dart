
class Product {
  late String _name;
  String get name => _name;
  late int _quantity;
  int get quantity => _quantity;
  set quantity(int value) => _quantity = value;

  Product({required String name, required int quantity}) {
    _name = name;
    _quantity = quantity;
  }
}