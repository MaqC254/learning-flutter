import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: QuestionsPage(),
  ));
}

class QuestionsPage extends StatelessWidget {
  const QuestionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Choose one of the below choices",
          style: TextStyle(
          color: Colors.black
          ),
        ),
        backgroundColor: Colors.black26,
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Container(
        color: Colors.black,
      ),
    );
  }
}
