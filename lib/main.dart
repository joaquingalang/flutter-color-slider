import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int red = 255;
  int green = 255;
  int blue = 255;
  Color color = Colors.white;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF121212),
        appBar: AppBar(
          title: const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Color Slider',
              style: TextStyle(fontSize: 36, color: Colors.white),
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color(0xFF121212),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  const CircleAvatar(
                    radius: 110,
                    backgroundColor: Color(0xFF282828),
                  ),
                  CircleAvatar(
                    radius: 100,
                    backgroundColor: color,
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Slider(
                value: red.toDouble(),
                max: 255,
                onChanged: (double value) {
                  setState(() {
                    red = value.toInt();
                    color = Color.fromRGBO(red, green, blue, 1);
                  });
                },
                activeColor: Colors.red,
              ),
              Slider(
                value: green.toDouble(),
                max: 255,
                onChanged: (double value) {
                  setState(() {
                    green = value.toInt();
                    color = Color.fromRGBO(red, green, blue, 1);
                  });
                },
                activeColor: Colors.green,
              ),
              Slider(
                value: blue.toDouble(),
                max: 255,
                onChanged: (double value) {
                  setState(() {
                    blue = value.toInt();
                    color = Color.fromRGBO(red, green, blue, 1);
                  });
                },
                activeColor: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
