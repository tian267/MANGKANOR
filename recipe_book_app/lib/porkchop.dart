import 'package:flutter/material.dart';

class Porkchop extends StatefulWidget {
  const Porkchop({super.key});

  @override
  State<Porkchop> createState() => _PorkchopState();
}

class _PorkchopState extends State<Porkchop> {
  bool showTips = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFDD9C),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          child: Column(
            spacing: 10,
            children: [
              Text(
                'SIZZLING PORKCHOP',
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
                      Image(image: AssetImage("assets/porkchop.jpg")),
                      Text(
                        '''
        • 2 pieces pork chop, bone-in
        • 1 tablespoon soy sauce
        • 1 tablespoon oyster sauce
        • 1 teaspoon ground black pepper
        • 1 teaspoon garlic powder
        • 1 teaspoon onion powder
        • 1 tablespoon vinegar
        • 1/4 cup water
        • 1/2 cup cooking oil
        • 1 onion, sliced
        • 2 cloves garlic, minced
        • 1 bell pepper, sliced
        • 1/2 cup mushrooms, sliced
        • 1/4 cup soy sauce
        • 1 tablespoon Worcestershire sauce
        • 1/4 teaspoon sugar
        • 1 tablespoon margarine
        • Sizzling plate (for serving)
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
                          "For a juicier pork chop, marinate the meat for at least 30 minutes before cooking.",
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
      ),
    );
  }
}
