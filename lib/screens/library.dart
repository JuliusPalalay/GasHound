// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:spotifyclone_finals/widgets/playlist.dart';

class Library extends StatefulWidget {
  const Library({super.key});

  @override
  State<Library> createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .5,
          ),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage('gems.jpg'),
                                fit: BoxFit.fill),
                          ),
                        ),
                        SizedBox(width: 18),
                        Text(
                          "Your Library",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                        SizedBox(width: 79),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.search),
                        ),
                        SizedBox(width: 6),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.add),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 18),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white10,
                              borderRadius: BorderRadius.circular(16),
                              border:
                                  Border.all(color: Colors.white, width: 1)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 4),
                            child: Row(
                              children: [
                                Text(
                                  "Playlists",
                                  style: TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 8),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white10,
                              borderRadius: BorderRadius.circular(16),
                              border:
                                  Border.all(color: Colors.white, width: 1)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 4),
                            child: Row(
                              children: [
                                Text(
                                  "Albums",
                                  style: TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 8),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white10,
                              borderRadius: BorderRadius.circular(16),
                              border:
                                  Border.all(color: Colors.white, width: 1)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 4),
                            child: Row(
                              children: [
                                Text(
                                  "Artists",
                                  style: TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 24),
                        child: Icon(Icons.swap_vert),
                      ),
                      Text("Recents"),
                      SizedBox(width: 250),
                      Icon(Icons.qr_code),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                    color: Colors.black,
                    height: 1100,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Playlist(
                            image: AssetImage("album1.jpg"),
                            label: "Broken Home",
                            label2: "Playlist • Edmoe",
                            // iconPad: EdgeInsets.only(left: 160),
                          ),
                          Playlist(
                            image: AssetImage("album2.jpg"),
                            label: "The Way Life Goes",
                            label2: "Playlist • Lil Uzi Vert",
                            // iconPad: EdgeInsets.only(left: 128),
                          ),
                          Playlist(
                            image: AssetImage("album3.jpg"),
                            label: "Blonde",
                            label2: "Playlist • Frank Ocean",
                            // iconPad: EdgeInsets.only(left: 145),
                          ),
                          Playlist(
                            image: AssetImage("album4.jpg"),
                            label: "Bound 2",
                            label2: "Playlist • Kanye West",
                            // iconPad: EdgeInsets.only(left: 149),
                          ),
                          Playlist(
                            image: AssetImage("album5.jpg"),
                            label: "Headlines",
                            label2: "Playlist • Drake",
                            // iconPad: EdgeInsets.only(left: 20),
                          ),
                          Playlist(
                            image: AssetImage("album6.jpg"),
                            label: "White Horse",
                            label2: "Playlist • Taylor Swift",
                            // iconPad: EdgeInsets.only(left: 17),
                          ),
                          Playlist(
                            image: AssetImage("album8.jpg"),
                            label: "Die For You",
                            label2: "Playlist • The Weeknd",
                            // iconPad: EdgeInsets.only(left: 17),
                          ),
                          Playlist(
                            image: AssetImage("album1.jpg"),
                            label: "Broken Home",
                            label2: "Playlist • Edmoe",
                            // iconPad: EdgeInsets.only(left: 18),
                          ),
                          Playlist(
                            image: AssetImage("album2.jpg"),
                            label: "The Way Life Goes",
                            label2: "Playlist • Lil Uzi Vert",
                            // iconPad: EdgeInsets.only(left: 14),
                          ),
                          Playlist(
                            image: AssetImage("album3.jpg"),
                            label: "Blonde",
                            label2: "Playlist • Frank Ocean",
                            // iconPad: EdgeInsets.only(left: 17),
                          ),
                          Playlist(
                            image: AssetImage("album1.jpg"),
                            label: "Broken Home",
                            label2: "Playlist • Edmoe",
                            // iconPad: EdgeInsets.only(left: 18),
                          ),
                          Playlist(
                            image: AssetImage("album2.jpg"),
                            label: "The Way Life Goes",
                            label2: "Playlist • Lil Uzi Vert",
                            // iconPad: EdgeInsets.only(left: 14),
                          ),
                          Playlist(
                            image: AssetImage("album3.jpg"),
                            label: "Blonde",
                            label2: "Playlist • Frank Ocean",
                            // iconPad: EdgeInsets.only(left: 17),
                          ),
                          Playlist(
                            image: AssetImage("album4.jpg"),
                            label: "Bound 2",
                            label2: "Playlist • Kanye West",
                            // iconPad: EdgeInsets.only(left: 17),
                          ),
                          Playlist(
                            image: AssetImage("album5.jpg"),
                            label: "Headlines",
                            label2: "Playlist • Drake",
                            // iconPad: EdgeInsets.only(left: 20),
                          ),
                        ]),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
