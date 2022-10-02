import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, top: 30, right: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Estate',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF151619)),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                'Best doscovery ever',
                style: TextStyle(fontSize: 14, color: Color(0xFF6B6978)),
              )
            ],
          ),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xFFF7F6F9)),
            child: Stack(children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(FeatherIcons.bell),
                color: const Color(0xFF151619),
              ),
              Positioned(
                top: 9,
                right: 12,
                child: Container(
                  width: 6,
                  height: 6,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: const Color(0xFFEE2A02)),
                ),
              )
            ]),
          )
        ],
      ),
    );
  }
}
