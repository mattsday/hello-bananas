// Flutter
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _fontSize = 80;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hello, Bananas!',
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  fontSize: _fontSize,
                  shadows: [
                    Shadow(
                      blurRadius: 10.0,
                      color: Colors.red,
                      offset: Offset(5.0, 5.0),
                    ),
                    Shadow(
                      color: Colors.green,
                      blurRadius: 10.0,
                      offset: Offset(-5.0, 5.0),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _fontSize = _fontSize == 80 ? 160 : 80;
                  });
                },
                child: Text('Change Font Size'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
