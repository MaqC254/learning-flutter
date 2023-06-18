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
      backgroundColor: Colors.white,
      body:  SafeArea(
          child: Column(
            children: [
              TextButton.icon(onPressed:(){
                Navigator.pushNamed(context, '/location');
              },
                label:const Text('Edit location',),
            icon: const Icon(Icons.edit_location)),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text(data['location'],
                  style: const TextStyle(
                    fontSize: 28,
                  ),
                  ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Text(data['time'],
              style:const TextStyle(
                fontSize: 70,
                fontWeight: FontWeight.bold,
              ),
              ),
            ],
          ),
      ),
    );
  }
}