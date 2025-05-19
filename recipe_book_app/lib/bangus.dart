import 'package:flutter/material.dart';

class Bangus extends StatefulWidget {
  const Bangus({super.key});

  @override
  State<Bangus> createState() => _BangusState();
}

class _BangusState extends State<Bangus> {
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
                'SIZZLING BANGUS',
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
                      Image(image: AssetImage("assets/bangus.jpg")),
                      Text(
                        '''
  • 1 whole bangus, cleaned and deboned  
  • 2 tablespoons soy sauce  
  • 1 teaspoon ground black pepper  
  • 1 onion, sliced  
  • 2 cloves garlic, minced  
  • 1 tablespoon vinegar  
  • 1 tablespoon cooking oil  
  • 1 bell pepper, sliced  
  • 1 tomato, sliced 
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
                          "For extra crispiness, sear the bangus until golden brown before serving.",
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
