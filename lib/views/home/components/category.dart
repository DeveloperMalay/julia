import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Category extends StatelessWidget {
  Category({Key? key}) : super(key: key);

  List categories = const [
    'Bikes',
    'Electronics & Appliance',
    'Fashion',
    'Jobs',
    'Pets',
    'Mobile',
    'Books,Sports & Hobbies',
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 300,
      child: Expanded(
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 5, mainAxisSpacing: 5, crossAxisCount: 4),
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryIcons(categoryTitle: categories[index]);
          },
        ),
      ),
    );
  }
}

class CategoryIcons extends StatelessWidget {
  const CategoryIcons({Key? key, required this.categoryTitle})
      : super(key: key);
  final String categoryTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CircleAvatar(
          radius: 25,
          backgroundImage: NetworkImage(
            'https://cdn2.iconfinder.com/data/icons/avatars-99/62/avatar-370-456322-512.png',
          ),
        ),
        Text(categoryTitle),
      ],
    );
  }
}
