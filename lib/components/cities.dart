import 'package:flutter/material.dart';
import 'package:house_estate/models/city.dart';

var cities = [
  City(
      'https://images.unsplash.com/photo-1664649476527-dc0018c8d2a4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=928&q=80',
      'Jakarta Selatan',
      194),
  City(
      'https://images.unsplash.com/photo-1664649476527-dc0018c8d2a4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=928&q=80',
      'Jakarta Selatan',
      194),
  City(
      'https://images.unsplash.com/photo-1664649476527-dc0018c8d2a4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=928&q=80',
      'Jakarta Selatan',
      194),
];

class Cities extends StatelessWidget {
  const Cities({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 24, top: 24),
          child: Text(
            'Cities',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color(0xFF151619)),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        ...cities.map(
          (city) => CitiesItem(city: city),
        )
      ],
    );
  }
}

class CitiesItem extends StatelessWidget {
  final City city;
  const CitiesItem({super.key, required this.city});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, bottom: 16),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        child: Row(
          children: [
            Container(
              height: 70,
              width: 90,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.network(
                city.image,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      city.name,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF151619)),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      '${city.propertyCount} Property',
                      style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          color: Color(0xFF6B6978)),
                    ),
                  ],
                )),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFF322E4A)),
              child: const Text(
                'HOT',
                style: TextStyle(
                    color: Color(0xFFF7AF4B),
                    fontSize: 8,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
