import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:house_estate/models/category.dart';

var categories = [
  Category(FeatherIcons.wind, 'Hutan'),
  Category(FeatherIcons.shoppingBag, 'Toko'),
  Category(FeatherIcons.truck, 'Gudang'),
  Category(FeatherIcons.cloudDrizzle, 'Hujan'),
  Category(FeatherIcons.briefcase, 'Office'),
  Category(FeatherIcons.wind, 'Jungle'),
];

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 24, top: 24),
          child: Text(
            'Categories',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color(0xFF151619)),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        SizedBox(
            height: 74,
            child: ListView.separated(
                padding: const EdgeInsets.only(left: 24, right: 24),
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) => CategoryItem(
                      category: categories[index],
                    )),
                separatorBuilder: ((context, index) => const SizedBox(
                      width: 16,
                    )),
                itemCount: categories.length))
      ],
    );
  }
}

class CategoryItem extends StatelessWidget {
  final Category category;
  const CategoryItem({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25), color: Colors.white),
          child: Icon(
            category.icon,
            color: const Color(0xFF151619),
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          category.text,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
