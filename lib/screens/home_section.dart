import 'package:flutter/material.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Selamat datang di',
              style: TextStyle(
                  fontSize: 32, fontWeight: FontWeight.bold, letterSpacing: 5),
            ),
            Text(
              'Flutter Portofolio',
              style:
                  TextStyle(fontSize: 32, color: Colors.blue, letterSpacing: 3),
            ),
          ],
        ),
      ),
    );
  }
}
