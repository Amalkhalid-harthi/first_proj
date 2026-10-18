class Product {
  String type;
  String color;
  int stockQuantity;

  Product(this.type, this.color, this.stockQuantity);

  void showInfo() {
    print('$type - $color - Stock: $stockQuantity');
  }

  String checkStock() {
    if (stockQuantity == 0) {
      return 'Out of stock';
    } else if (stockQuantity <= 2) {
      return 'Warning: Low stock!';
    } else {
      return 'In stock';
    }
  }
}

void main() {
  List<Product> products = [
    Product('dress', 'red', 4),
    Product('shirt', 'blue', 7),
    Product('socks', 'yellow', 0),
  ];

  for (Product product in products) {
    product.showInfo();
    print(product.checkStock());
  }
}