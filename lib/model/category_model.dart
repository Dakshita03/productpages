import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String name;
  final String imageUrl;

  const Category({required this.name, required this.imageUrl});

  @override
  // TODO: implement props
  List<Object?> get props => [name, imageUrl];

  static List<Category> categories = [
    Category(
        name: 'Electronics',
        imageUrl:
            'https://cdn.grabon.in/gograbon/images/web-images/uploads/1621488513434/today-electronics-offers.jpg'),
    Category(
        name: 'Sports',
        imageUrl:
            'https://images-eu.ssl-images-amazon.com/images/G/31/img21/Sports/Clearance21/Badminton.jpg'),
    Category(
        name: 'Grocery',
        imageUrl:
            'https://cdn.grabon.in/gograbon/images/web-images/uploads/1618548899692/groceries-offers.jpg'),
  ];
}
