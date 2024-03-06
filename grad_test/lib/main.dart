import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Notes app"),
        backgroundColor: Colors.black26,
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Container(
        color: Colors.red,
        child: Column(
            children: [
              ElevatedButton(onPressed:(){},
                  child: const Text("Choice 1"))
            ],
          ),
        )
    );
  }
}