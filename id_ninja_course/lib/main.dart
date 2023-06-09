import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));

}
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Ninja ID Card'),
        backgroundColor: Colors.grey[850],
        centerTitle: true,
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:(){
          setState(() {
            ninjaLevel++;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
      body:  Padding(
        padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('asset/images/download.jpeg'),
                  radius: 40,

                ),
              ),
              Divider(
                height: 60,
                color: Colors.grey[800],
              ),
              const Text('NAME',
              style: TextStyle(
                  color:Colors.grey,
              letterSpacing: 2.0),
              ),
              const SizedBox(
                height: 10,),
              const Text('Maxwell',
                style: TextStyle(
                    color:Colors.yellow,
                    letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
                fontSize: 20.0),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text('CURRENT NINJA LEVEL',
                style: TextStyle(
                    color:Colors.grey,
                    letterSpacing: 2.0),
              ),
              const SizedBox(
                height: 10,),
               Text('$ninjaLevel',
                style: const TextStyle(
                    color:Colors.yellow,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                children: [
                  Icon(Icons.mail,
                  color: Colors.white54,
                  ),
                  SizedBox(width: 10,),
                  Text('maxwellm751@gmail.com',
                  style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 16,
                    letterSpacing: 1,
                  ),
                  ),
                ],
              )
            ],

          ),
        ),
    );
  }
}




