import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

// lets creat a variable
double _currentValue = 0;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            _currentValue.toString(),
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          Slider(
            value: _currentValue,
            min: 0,
            max: 10,
            divisions: 4,
            activeColor: Colors.blue,
            inactiveColor: Colors.red,
            thumbColor: Colors.red,
            label: _currentValue.toString(),
            onChanged: (value) {
              setState(() {
                _currentValue = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
