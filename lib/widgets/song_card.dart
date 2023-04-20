import 'package:flutter/material.dart';

class SongCard extends StatelessWidget {
  final AssetImage image;
  final String label;
  const SongCard({super.key, required this.image, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: image,
          width: 110,
          height: 110,
          fit: BoxFit.cover,
        ),
        SizedBox(height: 10),
        Text(
          label,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
        ),
      ],
    ));
  }
}
