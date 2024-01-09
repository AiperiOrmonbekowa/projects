class Product {
  Product({
    required this.title,
    required this.image,
  });

  final String title;
  final String image;
}

List<Product> demo_prodacts = [
  Product(title: 'Apple', image: 'assets/images/apple.jpg'),
  Product(title: 'Apple', image: 'assets/images/banan.jpg'),
  Product(title: 'Apple', image: 'assets/images/mandarin.jpg'),
];
