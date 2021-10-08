import 'package:flutter/material.dart';
import 'package:swipe_deck/swipe_deck.dart';

const iMages = ["face", "face1", "Temi", "face2", "ron"];
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Image Slider',
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFa89c32),
        elevation: 0,
        title: const Text('Image Slider'),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: const [
          Color(0xFFCFB784),
          Color(0xFFEADEB8),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: Center(
          child: SwipeDeck(
            aspectRatio: 5 / 3,
            startIndex: 1,
            widgets: iMages
                .map(
                  (e) => Image.asset(
                    "images/$e.jpeg",
                    fit: BoxFit.cover,
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
