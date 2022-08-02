import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:productpages/model/category_model.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.imgName, required this.categoryName});
  final String imgName;
  final String categoryName;
  //final Category category;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.black26,
      onTap: () {
        Navigator.pushNamed(
          context,
          '/catalog',
          arguments: categoryName,
        );
      },
      borderRadius: BorderRadius.circular(25),
      child: Container(
        height: 120,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        child: Ink.image(
          image: AssetImage(imgName),
          fit: BoxFit.cover,
          child: Align(
              alignment: Alignment.bottomCenter,
              child: BorderedText(
                strokeWidth: 4.0,
                strokeColor: Colors.white54,
                child: Text(
                  categoryName,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 21.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
