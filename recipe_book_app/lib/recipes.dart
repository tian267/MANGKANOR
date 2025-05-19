import 'dart:math';

import 'package:flutter/material.dart';
import 'sisig.dart';
import 'bangus.dart';
import 'porkchop.dart';

class Recipes extends StatefulWidget {
  const Recipes({super.key});

  @override
  State<Recipes> createState() => _RecipesState();
}

class _RecipesState extends State<Recipes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFDD9C),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          spacing: 40,
          children: [
            Center(
              child: Text(
                "RECIPES:",
                style: TextStyle(
                  letterSpacing: 4,
                  fontFamily: "bonoddimoda",
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
            ),

            ElevatedButton(
              onPressed:
                  () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Sisig()),
                    ),
                  },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,

                elevation: 0,
              ),
              child: Container(
                decoration: BoxDecoration(color: Color(0xFFBFA163)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      SizedBox(
                        child: Image(
                          image: AssetImage("assets/sisig.jpg"),
                          height: 70,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          "SIZZLING SISIG",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed:
                  () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Porkchop()),
                    ),
                  },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                elevation: 0,
              ),
              child: Container(
                decoration: BoxDecoration(color: Color(0xFFBFA163)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      SizedBox(
                        child: Image(
                          image: AssetImage("assets/porkchop.jpg"),
                          height: 70,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Text(
                          "SIZZLING PORKCHOP",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed:
                  () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Bangus()),
                    ),
                  },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                elevation: 0,
              ),
              child: Container(
                decoration: BoxDecoration(color: Color(0xFFBFA163)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      SizedBox(
                        child: Image(
                          image: AssetImage("assets/bangus.jpg"),
                          height: 70,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          softWrap: true,
                          "SIZZLING BANGUS",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
