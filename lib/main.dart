import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class ColoredContainer extends StatelessWidget {
  final Color color;
  final double width;
  final double height;
  final double borderRadius;
  final String text;

  const ColoredContainer({super.key, 
    required this.color,
    this.width = 100,
    this.height = 50,
    this.borderRadius = 15.0,
    required this.text,
  });

  

  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      width: width,
      height: height,
      margin: const EdgeInsets.all(8.0),
            child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          
        ),
        
        textAlign: TextAlign.center,
            ),
    );
  }
}


class MyApp extends StatelessWidget {
  final List<String> texts = [
    'I', 'II', 'III', 'IV', 'V', 'VI', 'VII', 'VIII', 'IX', 'X'
  ];

  MyApp({super.key});

@override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [

            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: texts.map((text) {
                  return ColoredContainer(color: Colors.blue, text: text);
                }).toList(),
              ),
            ),

            SizedBox(
              height: 300,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: texts.map((text) {
                  return ColoredContainer(color: Colors.blue, text: text);
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}