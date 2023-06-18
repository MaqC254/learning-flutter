import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        title: const Text('Choose location'),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        elevation: 0.0,

      ),
      body: const Text('Choose location screen',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
