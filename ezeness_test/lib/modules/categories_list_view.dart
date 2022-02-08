import 'package:flutter/material.dart';
import '../models/CategoryModel.dart';

class Categories extends StatelessWidget {
  Categories({Key? key}) : super(key: key);

  List<CategoryModel> categoriesList = [
    CategoryModel(image: 'assets/images/categoryIcon.png', categoryName: 'U .. UP SPECIAL'),
    CategoryModel(image: 'assets/images/categoryIcon.png', categoryName: 'Main Category2'),
    CategoryModel(image: 'assets/images/categoryIcon.png', categoryName: 'Main Category3'),
    CategoryModel(image: 'assets/images/categoryIcon.png', categoryName: 'Main Category4'),
    CategoryModel(image: 'assets/images/categoryIcon.png', categoryName: 'Main Category5'),
    CategoryModel(image: 'assets/images/categoryIcon.png', categoryName: 'Main Category6'),
  ];

  ScrollController control = ScrollController();

  @override
  Widget build(BuildContext context) {


    return Scrollbar(
          thickness: 2,
          controller: control,
          child:
          Column(
            children: [
              Container(
               color: Colors.white70,
                margin: const EdgeInsets.symmetric(vertical: 20.0),
                height: 200.0,
                child: ListView.builder(
                  controller: control,
                  itemCount: categoriesList.length,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        categoryWidget(categoriesList[index]),
                        const SizedBox(width: 10),
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

Column categoryWidget(CategoryModel category) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Container(
          height: 180,
          width: 120,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(category.image,),
                backgroundColor: Colors.transparent,
                radius: 60,
                foregroundColor: Colors.transparent,
              ),
              Text(
                category.categoryName,
                style: const TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 15,),
                maxLines: 2,

              ),

            ],
          ),
        ),
      ),
    ],
  );
}
