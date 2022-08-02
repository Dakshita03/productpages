import 'package:flutter/material.dart';
import 'package:productpages/homepage.dart';
import 'package:productpages/model/category_model.dart';

class CategoryBar extends StatelessWidget {
  final Category category;
  const CategoryBar({required this.category});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Card(
            child: ListTile(
          dense: true,
          leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios, size: 35),
              onPressed: () => Navigator.pop(context)),
          title: Text(
            category.name,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
            ),
          ),
        )),
      ],
    );
  }
}
