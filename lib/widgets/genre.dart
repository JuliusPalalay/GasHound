import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Genre extends StatelessWidget {
  final Color;
  final String label;
  const Genre({super.key, this.Color, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(color: Color, borderRadius: BorderRadius.circular(4)),
      height: 120,
      width: 360,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
        child: Row(
          children: [
            Image.asset(
              'shelllogo.png',
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    'SHELL',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                  Text(label)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
