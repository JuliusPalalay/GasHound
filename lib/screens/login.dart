// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:spotifyclone_finals/navi/tabbar.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .2,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.white.withOpacity(0.3),
                    Colors.white.withOpacity(0)
                  ],
                ),
              ),
            ),
            const Image(
              image: AssetImage("white_logo.png"),
              width: 64,
              height: 64,
            ),
            SizedBox(
              height: 120,
            ),
            const Text(
              "Millions of songs.",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 32),
            ),
            const Text(
              "Free on Spotify.",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 32),
            ),
            SizedBox(
              height: 80,
            ),
            Column(
              children: [
                //SIGN UP FREE BUTTON
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 49, 205, 54),
                      padding:
                          EdgeInsets.symmetric(horizontal: 118, vertical: 20),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Tabbar(),
                      ),
                    );
                  },
                  child: const Text(
                    'Sign up free',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 38),
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Tabbar(),
                        ),
                      );
                    },
                    icon: Icon(Icons.phone_android),
                    label: Center(
                      child: Text(
                        "Continue with phone number",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(
                        width: 1,
                        color: Colors.white60,
                        style: BorderStyle.solid,
                      ),
                      backgroundColor: Colors.black,
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 17),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 38),
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Tabbar(),
                        ),
                      );
                    },
                    icon: Image(
                      image: AssetImage('google.png'),
                      width: 24,
                      height: 24,
                    ),
                    label: Center(
                      child: Text(
                        "Continue with Google",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(
                        width: 1,
                        color: Colors.white60,
                        style: BorderStyle.solid,
                      ),
                      backgroundColor: Colors.black,
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 17),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Tabbar(),
                        ),
                      );
                    },
                    icon: Image(
                      image: AssetImage('fblogo.png'),
                      width: 36,
                      height: 36,
                    ),
                    label: Center(
                      child: Text(
                        "Continue with Facebook",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(
                        width: 1,
                        color: Colors.white60,
                        style: BorderStyle.solid,
                      ),
                      backgroundColor: Colors.black,
                      padding:
                          EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Tabbar(),
                      ),
                    );
                  },
                  child: Text(
                    'Log in',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
