class ProductModel {
  final String imageUrl;
  final String category;
  final String title;
  final String price;

  ProductModel({
    required this.imageUrl,
    required this.category,
    required this.title,
    required this.price,
  });

  static List<ProductModel> popularProducts = [
    ProductModel(
      imageUrl: "assets/images/shoes1.png",
      category: "hiking",
      title: "TERREX URBAN LOW GTX",
      price: "\$143,98",
    ),
    ProductModel(
      imageUrl: "assets/images/shoes2.png",
      category: "hiking",
      title: "Converse Chuck Taylor All Star",
      price: "\$58,67",
    ),
    ProductModel(
      imageUrl: "assets/images/shoes3.png",
      category: "training",
      title: "SL 72 SHOES",
      price: "\$115,67",
    ),
  ];

  static List<ProductModel> newArrivals = [
    ProductModel(
      imageUrl: "assets/images/shoes5.png",
      category: "hiking",
      title: "fasdfsa",
      price: "\$143,98",
    ),
    ProductModel(
      imageUrl: "assets/images/shoes6.png",
      category: "hiking",
      title: "Converse Chuck Taylor All Star",
      price: "\$58,67",
    ),
    ProductModel(
      imageUrl: "assets/images/shoes7.png",
      category: "training",
      title: "SL 72 SHOES",
      price: "\$115,67",
    ),
  ];
}
