class Product {
  final String id;
  final String nameProduct;
  final String ProductImage;
  final String priceOld;
  final String priceNow;

  const Product({
    required this.id,
    required this.nameProduct,
    required this.ProductImage,
    required this.priceOld,
    required this.priceNow,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      nameProduct: json['name'],
      ProductImage: json['image'],
      priceOld: json['priceOld'],
      priceNow: json['priceNow'],
    );
  }
}
