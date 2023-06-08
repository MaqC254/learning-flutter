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
        title: Text('Ninja ID Card'),
        backgroundColor: Colors.grey[850],
        centerTitle: true,
        elevation: 0,
      ),
      body:  Padding(
        padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('asset/images/download.jpeg'),
                  radius: 40,

                ),
              ),
              Divider(
                height: 60,
                color: Colors.grey[800],
              ),
              Text('NAME',
              style: TextStyle(
                  color:Colors.grey,
              letterSpacing: 2.0),
              ),
              SizedBox(
                height: 10,),
              Text('Maxwell',
                style: TextStyle(
                    color:Colors.yellow,
                    letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
                fontSize: 20.0),
              ),
              SizedBox(
                height: 30,
              ),
              Text('CURRENT NINJA LEVEL',
                style: TextStyle(
                    color:Colors.grey,
                    letterSpacing: 2.0),
              ),
              SizedBox(
                height: 10,),
              Text('8',
                style: TextStyle(
                    color:Colors.yellow,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
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


