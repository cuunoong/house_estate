import 'package:flutter/material.dart';
import 'package:house_estate/models/staff.dart';

var staffs = [
  Staff(
      'https://images.unsplash.com/photo-1664628286071-dc721f34b2d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=626&q=80',
      'Lagin Sky',
      '412 sq ft.',
      '\$920',
      true),
  Staff(
      'https://images.unsplash.com/photo-1664629480205-c0c248ba9242?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
      'Inn Parapatt',
      '800 sq ft.',
      '\$920',
      true)
];

class StaffPicks extends StatelessWidget {
  const StaffPicks({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 24, top: 24),
          child: Text(
            'Staff Picks',
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
            height: 181,
            child: ListView.separated(
                padding: const EdgeInsets.only(left: 24, right: 24),
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) => StaffItem(
                      staff: staffs[index],
                    )),
                separatorBuilder: ((context, index) => const SizedBox(
                      width: 16,
                    )),
                itemCount: staffs.length))
      ],
    );
  }
}

class StaffItem extends StatelessWidget {
  final Staff staff;
  const StaffItem({super.key, required this.staff});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 181,
      width: 200,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Column(children: [
        SizedBox(
          height: 110,
          width: 180,
          child: Stack(children: [
            Container(
              clipBehavior: Clip.hardEdge,
              height: 110,
              width: 180,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Image.network(fit: BoxFit.cover, staff.image),
            ),
            Positioned(
              left: 10,
              top: 10,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFF322E4A)),
                child: const Text(
                  'NEW',
                  style: TextStyle(
                      color: Color(0xFFF7AF4B),
                      fontSize: 8,
                      fontWeight: FontWeight.w600),
                ),
              ),
            )
          ]),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  staff.title,
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  staff.desc,
                  style: const TextStyle(
                      color: Color(0xFF6B6978),
                      fontSize: 12,
                      fontWeight: FontWeight.w300),
                )
              ],
            ),
            Text(
              staff.price,
              style: const TextStyle(
                  color: Color(0xFFF7AF4B), fontWeight: FontWeight.w600),
            )
          ],
        )
      ]),
    );
  }
}
