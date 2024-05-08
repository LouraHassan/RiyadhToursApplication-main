import 'package:flutter/material.dart';
import 'package:testapp1/mainpagesEN/explore.dart';

import '../mainpagesEN/crplan.dart';
import '../mainpagesEN/essentials.dart';
import 'adminprofile.dart';

class AdminHomePage extends StatefulWidget {
  const AdminHomePage({super.key});

  @override
  State<AdminHomePage> createState() => _AdminHomePageState();
}

class _AdminHomePageState extends State<AdminHomePage> {
  int _currentIndex = 1;
  final List<Widget> _pages = [
    const AdminProfilePage(),
    const ExplorePage(),
    const CreatePlanPage(),
    const EssentialsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: const TextStyle(
            color: Color.fromRGBO(40, 87, 69, 1),
            fontSize: 16,
            fontWeight: FontWeight.bold),
        fixedColor: const Color.fromRGBO(40, 87, 69, 1),
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle_rounded,
              color: Color.fromRGBO(40, 87, 69, 1),
              size: 40,
            ),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search_rounded,
              color: Color.fromRGBO(40, 87, 69, 1),
              size: 40,
            ),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.date_range_rounded,
              color: Color.fromRGBO(40, 87, 69, 1),
              size: 40,
            ),
            label: 'Plan',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.design_services_rounded,
              color: Color.fromRGBO(40, 87, 69, 1),
              size: 40,
            ),
            label: "Services",
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
