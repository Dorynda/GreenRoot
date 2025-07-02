import 'package:flutter/material.dart';
import 'package:my_greenroot_app/community.dart';
import 'package:my_greenroot_app/dashboard.dart';
import 'package:my_greenroot_app/farm.dart';
import 'package:my_greenroot_app/profile.dart';
import 'package:my_greenroot_app/market.dart'; 

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int currentIndex = 0;

  void pageSelected(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  final List pages = [
    {'Pages': const Dashboard(), 'label': 'Home'},
    {'Pages': const Market(), 'label': 'Market'}, 
    {'Pages': const Community(), 'label': 'Community'},
    {'Pages': const Farm(), 'label': 'List'},
    {'Pages': const Profile(), 'label': 'Profile'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFF1D7),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFFEFF1D7),
        selectedItemColor: const Color.fromARGB(255, 243, 95, 16),
        unselectedItemColor: Colors.black54,
        currentIndex: currentIndex,
        onTap: pageSelected,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.store), label: 'Market'), // <-- Market tab
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Community'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'List'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
      body: SafeArea(
        child: pages[currentIndex]['Pages'],
      ),
    );
  }
}
