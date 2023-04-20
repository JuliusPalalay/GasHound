// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:spotifyclone_finals/widgets/songs.dart';

class AlbumScreen extends StatefulWidget {
  final ImageProvider image;
  const AlbumScreen({Key? key, required this.image}) : super(key: key);

  @override
  State<AlbumScreen> createState() => _AlbumScreenState();
}

class _AlbumScreenState extends State<AlbumScreen> {
  late ScrollController scrollController;
  double imgSize = 0;
  double initialSize = 240;
  double containerHeight = 500;
  double initialContainerHeight = 500;
  double imgOpacity = 1;
  @override
  void initState() {
    imgSize = initialSize;
    scrollController = ScrollController()
      ..addListener(() {
        imgSize = initialSize - scrollController.offset * .2;
        if (imgSize < 0) {
          imgSize = 0;
        }
        containerHeight = initialContainerHeight - scrollController.offset * .2;
        if (containerHeight < 0) {
          containerHeight = 0;
        }
        imgOpacity = imgSize / initialSize;
        setState(() {});
      });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: containerHeight,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            color: Colors.white70.withOpacity(.4),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Opacity(
                  opacity: imgOpacity.clamp(0, 1.0),
                  child: Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(.5),
                        offset: Offset(0, 20),
                        blurRadius: 32,
                        spreadRadius: 16,
                      )
                    ]),
                    child: Image(
                      image: widget.image,
                      width: imgSize,
                      height: imgSize,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 230)
              ],
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              controller: scrollController,
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  Container(
                    clipBehavior: Clip.none,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withOpacity(0),
                          Colors.black.withOpacity(0),
                          Colors.black.withOpacity(1),
                        ],
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Column(
                        children: [
                          SizedBox(height: initialSize + 32),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Big hit album around the world.",
                                  style: Theme.of(context).textTheme.caption,
                                ),
                                SizedBox(height: 8),
                                Row(
                                  children: [
                                    Image(
                                      image: AssetImage("logo.png"),
                                      width: 20,
                                      height: 20,
                                    ),
                                    SizedBox(width: 8),
                                    Text("Spotify")
                                  ],
                                ),
                                SizedBox(height: 16),
                                Text(
                                  "2,542,703 likes • 7h 25m",
                                  style: Theme.of(context).textTheme.caption,
                                ),
                                SizedBox(height: 16),
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.favorite,
                                          color:
                                              Color.fromARGB(255, 49, 205, 54),
                                        ),
                                        SizedBox(width: 20),
                                        Icon(Icons.downloading_outlined,
                                            color: Colors.white70),
                                        SizedBox(width: 20),
                                        Icon(Icons.more_vert,
                                            color: Colors.white70),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(width: 280),
                                        Icon(Icons.shuffle_rounded,
                                            color: Colors.white70),
                                      ],
                                    ),
                                    SizedBox(height: 36),
                                    Positioned(
                                      right: 0,
                                      bottom: 0,
                                      child: Container(
                                        width: 46,
                                        height: 46,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color:
                                              Color.fromARGB(255, 49, 205, 54),
                                        ),
                                        child: Icon(
                                          Icons.play_arrow_rounded,
                                          color: Colors.black,
                                          size: 30,
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                    color: Colors.black,
                    height: 900,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RowSongs(
                            image: AssetImage("album1.jpg"),
                            label: "Broken Home",
                            label2: " Edmoe",
                            iconPad: EdgeInsets.only(left: 180),
                          ),
                          RowSongs(
                            image: AssetImage("album2.jpg"),
                            label: "The Way Life Goes",
                            label2: " Lil Uzi Vert",
                            iconPad: EdgeInsets.only(left: 147),
                          ),
                          RowSongs(
                            image: AssetImage("album3.jpg"),
                            label: "Blonde",
                            label2: " Frank Ocean",
                            iconPad: EdgeInsets.only(left: 171),
                          ),
                          RowSongs(
                            image: AssetImage("album4.jpg"),
                            label: "Bound 2",
                            label2: " Kanye West",
                            iconPad: EdgeInsets.only(left: 176),
                          ),
                          RowSongs(
                            image: AssetImage("album5.jpg"),
                            label: "Headlines",
                            label2: " Drake",
                            iconPad: EdgeInsets.only(left: 206),
                          ),
                          RowSongs(
                            image: AssetImage("album6.jpg"),
                            label: "White Horse",
                            label2: " Taylor Swift",
                            iconPad: EdgeInsets.only(left: 177),
                          ),
                          RowSongs(
                            image: AssetImage("album8.jpg"),
                            label: "Die For You",
                            label2: " The Weeknd",
                            iconPad: EdgeInsets.only(left: 171),
                          ),
                          RowSongs(
                            image: AssetImage("album1.jpg"),
                            label: "Broken Home",
                            label2: " Edmoe",
                            iconPad: EdgeInsets.only(left: 180),
                          ),
                          RowSongs(
                            image: AssetImage("album2.jpg"),
                            label: "The Way Life Goes",
                            label2: " Lil Uzi Vert",
                            iconPad: EdgeInsets.only(left: 147),
                          ),
                          RowSongs(
                            image: AssetImage("album3.jpg"),
                            label: "Blonde",
                            label2: " Frank Ocean",
                            iconPad: EdgeInsets.only(left: 171),
                          ),
                          RowSongs(
                            image: AssetImage("album1.jpg"),
                            label: "Broken Home",
                            label2: " Edmoe",
                            iconPad: EdgeInsets.only(left: 180),
                          ),
                          RowSongs(
                            image: AssetImage("album2.jpg"),
                            label: "The Way Life Goes",
                            label2: " Lil Uzi Vert",
                            iconPad: EdgeInsets.only(left: 147),
                          ),
                          RowSongs(
                            image: AssetImage("album3.jpg"),
                            label: "Blonde",
                            label2: " Frank Ocean",
                            iconPad: EdgeInsets.only(left: 171),
                          ),
                          RowSongs(
                            image: AssetImage("album4.jpg"),
                            label: "Bound 2",
                            label2: " Kanye West",
                            iconPad: EdgeInsets.only(left: 176),
                          ),
                          RowSongs(
                            image: AssetImage("album5.jpg"),
                            label: "Headlines",
                            label2: " Drake",
                            iconPad: EdgeInsets.only(left: 206),
                          ),
                        ]),
                  )
                ],
              ),
            ),
          ),
          Positioned(
              child: Container(
            child: SafeArea(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back))
                  ],
                ),
              ),
            ),
          ))
        ],
      ),
    );
  }
}
