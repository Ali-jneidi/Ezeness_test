import 'package:carousel_slider/carousel_slider.dart';
import 'package:ezeness_test/modules/categories_list_view.dart';
import 'package:ezeness_test/modules/carousel_item.dart';
import 'package:ezeness_test/modules/product_card.dart';
import 'package:ezeness_test/modules/sub_categories.dart';
import 'package:ezeness_test/shared/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../modules/stories_list_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/images/updrive.PNG',
          fit: BoxFit.contain,
          width: 70,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4.0)),
              child: Row(
                children: [
                  const SizedBox(
                    width: 100,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search ...',
                        enabledBorder: InputBorder.none,
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: null,
                    child: Image.asset(
                      'assets/images/headset.png',
                      width: 25,
                      height: 25,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2.0),
                  ),
                  GestureDetector(
                    onTap: null,
                    child: Image.asset(
                      'assets/images/24_7.png',
                      width: 25,
                      height: 25,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2.0),
                  ),
                  GestureDetector(
                    onTap: null,
                    child: Image.asset(
                      'assets/images/qr.png',
                      width: 25,
                      height: 25,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Scrollbar(
          controller: ScrollController(),
          child: Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  textBarItem('U POST UP'),
                  textBarItem('U SHOP UP'),
                  textBarItem('U BOOK UP'),
                  textBarItem('U CALL UP'),
                ],
              ),
              Column(
                children: [
                  CarouselSlider(
                    options: CarouselOptions(
                        aspectRatio: 16 / 9,
                        viewportFraction: 1.0,
                        enlargeCenterPage: false),
                    items: carouselProducts.map((i) {
                      return CarouselItem(
                        product: i,
                      );
                    }).toList(),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 4.0, vertical: 2.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Banner Title',
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(4.0)),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 4.0),
                              child: const Center(
                                child: Text(
                                  'SHOP UP',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ))
                      ],
                    ),
                  )
                ],
              ),
              Categories(),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 4.0, vertical: 2.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          '# FOR U',
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: const Text(
                            'View All',
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                  productsGrid(count: 6),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 4.0, vertical: 2.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          '# TOP STORIES',
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: const Text(
                            'View All',
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Stories(),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 4.0, vertical: 2.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          '# SHOP BY CATEGORY',
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: const Text(
                            'View All',
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SubCategories(),
                  productsGrid(count: 5),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  footerItem('TERM OF USE'),
                  footerItem('CONTACT'),
                  footerItem('CAREER'),
                  footerItem('AREA RANGE'),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Opacity(
                      opacity: 0.75,
                      child: Image.asset(
                        'assets/images/updrive.PNG',
                        width: 75,
                      )),
                  RichText(
                    text: const TextSpan(
                      text: 'PROJECT BY ',
                      style: TextStyle(color: Colors.grey, fontSize: 15.0),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'EZENESS TECHNOLOGY',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black54,
                                fontSize: 15.0)),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 16.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget textBarItem(String text) => TextButton(
      child: Text(
        text,
        style: const TextStyle(
            color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 14),
      ),
      onPressed: null,
    );

Widget footerItem(String text) => TextButton(
      child: Text(
        text,
        style: const TextStyle(color: Colors.grey, fontSize: 14),
      ),
      onPressed: null,
    );

Widget productsGrid({int? count}) => GridView.builder(
    controller: ScrollController(),
    physics: const NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisExtent: 170,
        crossAxisSpacing: 4,
        mainAxisSpacing: 2),
    itemCount: count,
    itemBuilder: (context, index) => ProductCard(
          product: products[index % 2],
        ));
