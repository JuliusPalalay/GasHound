// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:spotifyclone_finals/screens/login.dart';
import 'package:spotifyclone_finals/widgets/song_card.dart';

import '../widgets/album_card.dart';
import '../widgets/rowalbum_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: Alignment.topLeft,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * .5,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.white.withOpacity(0.1),
                Colors.white.withOpacity(0)
              ],
            ),
          ),
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Good evening",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 21),
                      ),
                      Row(
                        children: [
                          Icon(Icons.notifications_outlined),
                          SizedBox(width: 18),
                          Icon(Icons.history),
                          SizedBox(width: 18),
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Login(),
                                ),
                              );
                            },
                            icon: Icon(Icons.settings),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white10,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 4),
                          child: Row(
                            children: [
                              Text(
                                "Music",
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
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 4),
                          child: Row(
                            children: [
                              Text(
                                "Podcasts & Shows",
                                style: TextStyle(fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          RowAlbumCard(
                            label: 'Luv is Rage 2',
                            image: AssetImage('album2.jpg'),
                          ),
                          SizedBox(width: 16),
                          RowAlbumCard(
                            label: 'This is Gospel',
                            image: AssetImage('album19.jpg'),
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          RowAlbumCard(
                            label: 'Fearless',
                            image: AssetImage('album6.jpg'),
                          ),
                          SizedBox(width: 16),
                          RowAlbumCard(
                            label: 'Starboy',
                            image: AssetImage('album8.jpg'),
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          RowAlbumCard(
                            label: 'Three Cheers for \nSweet Revenge',
                            image: AssetImage('album10.jpg'),
                          ),
                          SizedBox(width: 16),
                          RowAlbumCard(
                            label: 'Believers Never \nDie-Greatest Hits',
                            image: AssetImage('album12.jpg'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Your top albums",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 21),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                  child: Row(
                    children: [
                      AlbumCard(
                        label: "World Cup",
                        image: AssetImage('album18.jpg'),
                        onTap: () {},
                      ),
                      SizedBox(width: 16),
                      AlbumCard(
                        label: "Spiderverse Soundtrack",
                        image: AssetImage('album17.jpg'),
                        onTap: () {},
                      ),
                      SizedBox(width: 16),
                      AlbumCard(
                        label: "Take Care",
                        image: AssetImage('album5.jpg'),
                        onTap: () {},
                      ),
                      SizedBox(width: 16),
                      AlbumCard(
                        label: "Speak Now",
                        image: AssetImage('album7.jpg'),
                        onTap: () {},
                      ),
                      SizedBox(width: 16),
                      AlbumCard(
                        label: "Fine Line",
                        image: AssetImage('album9.jpg'),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Recently played",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 21),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                      child: Row(children: [
                        SongCard(
                          label: "Nasa Iyo Na\nAng Lahat",
                          image: AssetImage('album16.jpg'),
                        ),
                        SizedBox(width: 16),
                        SongCard(
                          label: "Broken Home\n",
                          image: AssetImage('album1.jpg'),
                        ),
                        SizedBox(width: 16),
                        SongCard(
                          label: "Paramore\n",
                          image: AssetImage('album14.jpg'),
                        ),
                        SizedBox(width: 16),
                        SongCard(
                          label: "Take Care\n",
                          image: AssetImage('album5.jpg'),
                        ),
                        SizedBox(width: 16),
                        SongCard(
                          label: "Riot!\n",
                          image: AssetImage('album15.jpg'),
                        ),
                        SizedBox(width: 16),
                        SongCard(
                          label: "Bound 2\n",
                          image: AssetImage('album4.jpg'),
                        ),
                      ]),
                    ),
                    SizedBox(height: 18),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Jump back in",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 21),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      padding: EdgeInsets.all(16),
                      child: Row(
                        children: [
                          AlbumCard(
                            label: "Luv is Rage 2",
                            image: AssetImage('album2.jpg'),
                            onTap: () {},
                          ),
                          SizedBox(width: 16),
                          AlbumCard(
                            label: "U Smile",
                            image: AssetImage('album20.jpg'),
                            onTap: () {},
                          ),
                          SizedBox(width: 16),
                          AlbumCard(
                            label: "Fine Line",
                            image: AssetImage('album9.jpg'),
                            onTap: () {},
                          ),
                          SizedBox(width: 16),
                          AlbumCard(
                            label: "Speak Now",
                            image: AssetImage('album7.jpg'),
                            onTap: () {},
                          ),
                          SizedBox(width: 16),
                          AlbumCard(
                            label: "Starboy",
                            image: AssetImage('album8.jpg'),
                            onTap: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    ));
  }
}
