import 'package:flutter/material.dart';

class Playlist extends StatelessWidget {
  final AssetImage image;
  final String label;
  final String label2;
  const Playlist({
    Key? key,
    required this.image,
    required this.label,
    required this.label2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Container(
            width: 320,
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            clipBehavior: Clip.antiAlias,
            child: Row(
              children: [
                Image(
                  image: image,
                  height: 60,
                  width: 60,
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    Text(
                      label,
                      style: TextStyle(fontSize: 18),
                    ),
                    Row(
                      children: [
                        Text(
                          label2,
                          style: TextStyle(fontSize: 12, color: Colors.white70),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                Icon(
                  Icons.more_vert,
                  color: Colors.white70,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
