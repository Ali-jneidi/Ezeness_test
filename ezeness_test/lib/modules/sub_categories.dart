import 'package:flutter/material.dart';

import '../models/CategoryModel.dart';

class SubCategories extends StatefulWidget {
  const SubCategories({Key? key}) : super(key: key);

  @override
  _SubCategoriesState createState() => _SubCategoriesState();
}

class _SubCategoriesState extends State<SubCategories> {
  List<CategoryModel> categoriesList = [
    CategoryModel(image: 'assets/images/categoryIcon.png', categoryName: 'sub category1'),
    CategoryModel(image: 'assets/images/categoryIcon.png', categoryName: 'sub category2'),
    CategoryModel(image: 'assets/images/categoryIcon.png', categoryName: 'sub category3'),
    CategoryModel(image: 'assets/images/categoryIcon.png', categoryName: 'sub category4'),
    CategoryModel(image: 'assets/images/categoryIcon.png', categoryName: 'sub category5'),
    CategoryModel(image: 'assets/images/categoryIcon.png', categoryName: 'sub category6'),
  ];

  ScrollController control = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      thickness: 2,
      controller: control,
      child: Column(
        children: [
          Container(
            color: Colors.white70,
            margin: const EdgeInsets.symmetric(vertical: 10.0),
            height: 100.0,
            child: ListView.builder(
              controller: control,
              itemCount: categoriesList.length,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    subCategoryWidget(categoriesList[index]),
                    const SizedBox(width: 8),
                  ],
                );
              },
              // This next line does the trick.
              scrollDirection: Axis.horizontal,
            ),
          ),
        ],
      ),
    );
  }
}

SizedBox subCategoryWidget(CategoryModel category) {
  return SizedBox(
    width: 200,
    child: ListTile(
      leading: const SizedBox(
        width: 100,
        child: CircleAvatar(
          backgroundImage: AssetImage('assets/images/subCategory.png'),
          backgroundColor: Colors.transparent,
          radius: 90,
          foregroundColor: Colors.transparent,
        ),
      ),
      title: SizedBox(
        width: 20,
        child: Text(
          category.categoryName,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 13,
          ),
          maxLines: 2,
        ),
      ),
    ),
  );
}
