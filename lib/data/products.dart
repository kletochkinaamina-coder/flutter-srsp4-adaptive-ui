// Простой класс товара
class Product {
  String name; // ключ локализации
  int price;
  String image;
  bool isFavorite;

  Product(this.name, this.price, this.image, {this.isFavorite = false});
}

// Демонстрационные данные (без базы данных)
List<Product> products = [
  Product('phone', 250000, 'https://picsum.photos/id/1/300/300'),
  Product('laptop', 450000, 'https://picsum.photos/id/2/300/300'),
  Product('headphones', 35000, 'https://picsum.photos/id/3/300/300'),
  Product('watch', 80000, 'https://picsum.photos/id/4/300/300'),
  Product('camera', 300000, 'https://picsum.photos/id/5/300/300'),
  Product('tablet', 200000, 'https://picsum.photos/id/6/300/300'),
];
