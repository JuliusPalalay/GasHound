import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          // child: Column(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //             children: [
          //               Text(
          //                 "Millions of songs.",
          //                 style: TextStyle(
          //                     fontWeight: FontWeight.bold, fontSize: 21),
          //               ),
          //               Text(
          //                 "Free on Spotify.",
          //                 style: TextStyle(
          //                     fontWeight: FontWeight.bold, fontSize: 21),
          //               ),

          //               SizedBox( height: 10),

          //             TextFormField(
          //               decoration: const InputDecoration(labelText: 'Password'),
          //                obscureText: true,

          //           )

          //             ]
          // ),

          ),
    );
  }
}
