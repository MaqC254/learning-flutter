import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data ={};

  @override
  Widget build(BuildContext context) {

    data= ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    print(data);
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body:  SafeArea(
          child: Column(
            children: [
              TextButton.icon(onPressed:(){
                Navigator.pushNamed(context, '/location');
              },
                label:const Text('Edit location',),
            icon: const Icon(Icons.edit_location)),
            ],
          )),
    );
  }
}