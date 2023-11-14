import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portofolio/screens/about_section.dart';
import 'package:flutter_portofolio/screens/home_section.dart';
import 'package:flutter_portofolio/screens/project_section.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // list screen
  final _screens = [
    const HomeSection(),
    const AboutSection(),
    const ProjectSection()
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Portofolio')),
      body: PageTransitionSwitcher(
        // set animasi untuk transisi antar-section
        transitionBuilder: (Widget child, Animation<double> primaryAnimation,
            Animation<double> secondaryAnimation) {
          // transisi SharedAxis semacam Fade-in-out
          return SharedAxisTransition(
            transitionType: SharedAxisTransitionType.horizontal,
            animation: primaryAnimation,
            secondaryAnimation: secondaryAnimation,
            child: child,
          );
        },
        // set tampilan body berdasarkan index
        child: _screens[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        // index saat ini
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "About"),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_library), label: "Project"),
        ],
        // set index baru sesuai dengan navbar item yang ditekan
        onTap: (newIndex) => setState(() => _currentIndex = newIndex),
      ),
    );
  }
}
