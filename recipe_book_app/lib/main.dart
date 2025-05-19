import 'package:flutter/material.dart';
import 'recipes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Savory: Recipe Book App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFDD9C),
      body: Padding(
        padding: EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage("assets/chef-hat.png"), height: 100),

            Container(
              height: 350,
              width: 370,
              decoration: BoxDecoration(border: Border.all(width: 8)),
              child: Center(
                child: Text(
                  'MANG KANOR \nCHRISPY \nFRY',
                  style: TextStyle(
                    height: 1.8,
                    fontFamily: "bonoddimoda",
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 30),
              child: Center(
                child: Text(
                  "RECIPE BOOK APP",
                  style: TextStyle(
                    fontFamily: "montserrat",
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    letterSpacing: 6,
                  ),
                ),
              ),
            ),
            Image(image: AssetImage("assets/spoon.png"), height: 70),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                elevation: 0,
              ),
              onPressed:
                  () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Recipes()),
                    ),
                  },
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image(image: AssetImage("assets/next.png"), height: 70),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
