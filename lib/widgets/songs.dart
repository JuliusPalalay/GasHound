import 'package:flutter/material.dart';

class RowSongs extends StatelessWidget {
  final AssetImage image;
  final String label;
  final String label2;
  final EdgeInsets iconPad;
  const RowSongs({
    Key? key,
    required this.image,
    required this.label,
    required this.label2,
    required this.iconPad,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black,
        ),
        clipBehavior: Clip.antiAlias,
        child: Row(children: [
          Image(
            image: image,
            height: 46,
            width: 46,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Text(
                label,
                style: TextStyle(fontSize: 16),
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white60,
                      borderRadius: BorderRadius.circular(2),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 1),
                      child: Row(
                        children: [
                          Text(
                            "LYRICS",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 8,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Text(
                    label2,
                    style: TextStyle(fontSize: 12, color: Colors.white70),
                  )
                ],
              )
            ],
          ),
          Padding(
            padding: iconPad,
            child: Icon(
              Icons.more_vert,
              color: Colors.white70,
            ),
          )
        ]),
      ),
    );
  }
}
