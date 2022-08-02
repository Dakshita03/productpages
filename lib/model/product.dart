import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String brandName;
  final String productName;
  final int price;
  final double rating;
  final String imageUrl;
  final String category;

  const Product(
      {required this.brandName,
      required this.productName,
      required this.price,
      required this.rating,
      required this.imageUrl,
      required this.category});

  @override
  // TODO: implement props
  List<Object?> get props =>
      [brandName, productName, price, rating, imageUrl, category];

  static List<Product> products = [
    Product(
        category: 'Grocery',
        brandName: 'Vero Moda',
        productName: 'A-Line Dress',
        price: 1299,
        rating: 5.0,
        imageUrl:
            'https://images-eu.ssl-images-amazon.com/images/G/31/img21/Sports/Clearance21/Badminton.jpg'),
    Product(
        category: 'Grocery',
        brandName: 'Vero Moda',
        productName: 'Bodycon Dress',
        price: 1299,
        rating: 5.0,
        imageUrl:
            'https://images-eu.ssl-images-amazon.com/images/G/31/img21/Sports/Clearance21/Badminton.jpg'),
    Product(
        category: 'Grocery',
        brandName: 'Levis',
        productName: 'Shorts',
        price: 1299,
        rating: 5.0,
        imageUrl:
            'https://cdn.grabon.in/gograbon/images/web-images/uploads/1618548899692/groceries-offers.jpg'),
    Product(
        category: 'Electricity',
        brandName: 'Vero Moda',
        productName: 'A-Line Dress',
        price: 1299,
        rating: 5.0,
        imageUrl:
            'https://cdn.grabon.in/gograbon/images/web-images/uploads/1621488513434/today-electronics-offers.jpg'),
  ];
}
