import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('search');
      },
      child: Container(
        height: 47,
        width: 47,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.09),
          borderRadius: BorderRadius.circular(16),
        ),
        child: const Icon(
          Icons.search,
          color: Colors.white,
          size: 28,
        ),
      ),
    );
  }
}
