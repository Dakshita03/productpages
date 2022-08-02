import 'package:flutter/material.dart';
import 'package:bordered_text/bordered_text.dart';
import 'package:productpages/model/product.dart';
import 'package:productpages/utils/dimensions.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: 900,
            child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(left: 10, right: 10, bottom: 3),
                    child: Row(
                      children: [
                        //image container
                        Container(
                          width: 120,
                          height: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  bottomLeft: Radius.circular(20)),
                              color: Color(0xFF222831),
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(product.imageUrl),
                              )),
                        ),

                        //text container
                        Expanded(
                          child: Container(
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20)),
                              color: Color(0xFF222831),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(right: 10, left: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    product.brandName,
                                    // maxLines: 1,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 231, 254, 255),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(product.productName,
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 231, 254, 255),
                                        fontSize: 17,
                                      )),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.currency_rupee_outlined,
                                        color:
                                            Color.fromARGB(255, 231, 254, 255),
                                        size: 16.0,
                                      ),
                                      Text(
                                        '${product.price}',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 231, 254, 255),
                                            fontSize: 17.0),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '${product.rating}',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 231, 254, 255),
                                            fontSize: 17.0),
                                      ),
                                      Icon(
                                        Icons.star,
                                        color:
                                            Color.fromARGB(255, 231, 254, 255),
                                        size: 17.0,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      TextButton(
                                        style: TextButton.styleFrom(
                                          backgroundColor: Color(0xFF00ADB5),
                                        ),
                                        child: Text(
                                          'Add To Cart',
                                          style: TextStyle(
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.w900,
                                              color: Color.fromARGB(
                                                  255, 231, 254, 255)),
                                        ),
                                        onPressed: () {},
                                      ),
                                      IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                              Icons.favorite_border,
                                              color: Color.fromARGB(
                                                  255, 231, 254, 255),
                                              size: 35)),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                }))
      ],
    );
  }
}
