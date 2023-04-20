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
      height: 100,
      width: 170,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
        child: Container(
          child: Text(
            label,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}
