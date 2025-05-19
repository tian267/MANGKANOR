import 'package:flutter/material.dart';

class Sisig extends StatefulWidget {
  const Sisig({super.key});

  @override
  State<Sisig> createState() => _SisigState();
}

class _SisigState extends State<Sisig> {
  bool showTips = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFDD9C),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        child: Column(
          spacing: 10,
          children: [
            Text(
              'SIZZLING SISIG',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "montserrat",
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),

            Center(
              child: Text(
                'Ingridients',
                style: TextStyle(
                  fontFamily: "montserrat",
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(border: Border.all(width: 8)),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  spacing: 20,
                  children: [
                    Image(image: AssetImage("assets/sisig.jpg")),
                    Text(
                      '''
  • ½ lb. pork belly, boiled for 1 hour  
  • ½ cup Lady’s Choice Mayonnaise  
  • 2 pieces onion, chopped  
  • 4 pieces Thai chili pepper, chopped  
  • 2 pieces long green pepper, chopped  
  • 16 grams Knorr SavorRich Pork (equivalent to 1 sachet)  
  • ½ teaspoon ground black pepper  
  • 2 tablespoons soy sauce  
  • ¼ cup margarine  
  • 2 cups cooking oil
                      ''',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Row(
              children: [
                Positioned(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      elevation: 0,
                      backgroundColor: Colors.transparent,
                    ),
                    onPressed: () {
                      setState(() {
                        showTips = !showTips;
                      });
                    },
                    child: Image.asset(
                      "assets/question.png",
                      width: 40,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Visibility(
                  visible: showTips,
                  child: Container(
                    width: 250,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(150, 0, 0, 0),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Crack an egg on top while it’s sizzling and stir just before eating for extra creaminess.",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: "montserrat",
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
