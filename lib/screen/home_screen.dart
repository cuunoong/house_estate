import 'package:flutter/material.dart';
import 'package:house_estate/components/best_agents.dart';
import 'package:house_estate/components/bottom_navigation.dart';
import 'package:house_estate/components/categories.dart';
import 'package:house_estate/components/cities.dart';
import 'package:house_estate/components/header.dart';
import 'package:house_estate/components/staff_picks.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Header(),
            Categories(),
            StaffPicks(),
            BestAgents(),
            Cities()
          ],
        )),
      ),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}
