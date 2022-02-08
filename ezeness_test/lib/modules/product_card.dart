import 'package:ezeness_test/models/product_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

class ProductCard extends StatelessWidget {
  final ProductModel? product;

  const ProductCard({Key? key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(2.0)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              Stack(
                children: [
                  Image.asset(
                    product?.image ?? "",
                    fit: BoxFit.contain,
                  ),
                  Positioned(
                      top: 2.0,
                      right: 2.0,
                      child: Image.asset(
                        product?.inFavorites ?? true
                            ? 'assets/images/filled_heart.png'
                            : 'assets/images/empty_heart.png',
                        width: 25,
                        height: 25,
                      )),
                  Positioned(
                      bottom: 2.0,
                      left: 2.0,
                      child: starRating(product?.rating ?? 0.0)),
                  Positioned(
                      bottom: 2.0,
                      right: 2.0,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.0),
                          color: Colors.grey.withOpacity(0.7),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 4.0, vertical: 2.0),
                          child: Text(
                            product?.dist ?? '',
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      ))
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    product?.oldPrice != null
                        ? Text(
                            '${product?.oldPrice}/-',
                            style: const TextStyle(
                                decoration: TextDecoration.lineThrough,
                                color: Colors.grey,
                                fontSize: 11,
                                fontWeight: FontWeight.bold),
                          )
                        : Container(),
                    Text(
                      '${product?.price}/-',
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.orange),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 4.0, vertical: 2.0),
                    child: Text(
                      '${product?.discount} %',
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
            child: Text(
              product?.name ?? "",
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

Widget starRating(double rating) => RatingStars(
      value: rating,
      starBuilder: (index, color) => Icon(
        Icons.star,
        color: color,
      ),
      starCount: 4,
      starSize: 17,
      maxValue: 4,
      starSpacing: 1,
      maxValueVisibility: false,
      valueLabelVisibility: false,
      animationDuration: const Duration(milliseconds: 500),
      starOffColor: Colors.transparent,
      starColor: Colors.orange,
    );
