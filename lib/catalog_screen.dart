import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:productpages/model/category_model.dart';
import 'package:productpages/model/product.dart';
import 'package:productpages/widgets/appBar.dart';
import 'package:productpages/widgets/category_bar.dart';
import 'package:productpages/widgets/custom_navbar.dart';
import 'package:productpages/widgets/productcard.dart';
import 'package:productpages/widgets/sortfilterbar.dart';

class CatalogScreen extends StatelessWidget {
  static const String routeName = '/catalog';

  static Route route({required Category category}) {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName),
        builder: (context) => CatalogScreen(category: category));
  }

  final Category category;

  const CatalogScreen({required this.category});

  @override
  Widget build(BuildContext context) {
    final List<Product> categoryProducts = Product.products
        .where((product) => product.category == category.name)
        .toList();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBarTop(),
        bottomNavigationBar: CustomNavbar(),
        body: Column(
          children: [
            CategoryBar(
              category: category,
            ),
            SortFilterBar(),
            Expanded(
              child: SingleChildScrollView(
                child: ProductCard(product: Product.products[0]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//   color: Colors.black,
//   height: 150,
//   decoration: BoxDecoration(
//     border: Border.all(color: Colors.white, width: 3),
//   ),
//   child: Center(
//     child: Text(
//       'Child $index',
//       style: TextStyle(color: Colors.white, fontSize: 16),
//     ),
//   ),
// );
