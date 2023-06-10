import 'package:flutter/material.dart';

class SquarTile extends StatelessWidget {
  final String imagePath;
  const SquarTile({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromARGB(245, 240, 184, 0)),
        borderRadius: BorderRadius.circular(16),
        color: Color.fromARGB(255, 238, 238, 238),
      ),
      child: Image.asset(
        imagePath,
        height: 25,
      ),
    );
  }
}
