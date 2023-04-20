import 'package:flutter/material.dart';
import 'package:spotifyclone_finals/screens/album_screen.dart';

class AlbumCard extends StatelessWidget {
  final ImageProvider image;
  final String label;
  final VoidCallback onTap;
  const AlbumCard({
    Key? key,
    required this.image,
    required this.label,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AlbumScreen(image: image),
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: image,
            width: 150,
            height: 150,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 10),
          Text(
            label,
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }
}
