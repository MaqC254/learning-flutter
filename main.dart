import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
home: Home()
  ));
}
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My First app'),
        backgroundColor: Colors.black45,
        centerTitle: true,
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                color: Colors.cyan,
                child: Text('oneP'),
              ),
              Container(
                padding: EdgeInsets.all(20),
                color: Colors.cyan,
                child: Text('twoP'),
              ),
            ],
          ),
        Container(
          padding: EdgeInsets.all(20),
          color: Colors.cyan,
          child: Text('threeP'),
        ),
        Container(
          padding: EdgeInsets.all(20),
          color: Colors.redAccent,
          child: Text('two'),
        ),
        Container(
          padding: EdgeInsets.all(20),
          color: Colors.black45,
          child: Text('three'),
        )

      ],),

      /*Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Text('Hello'),
          TextButton(onPressed: null,
              child:Text('Click me',
              style: TextStyle(
                color: Colors.red,
              ),
              )
          ),

        Container(
          color: Colors.cyan,
          padding: EdgeInsets.all(30),
          child: Text('Inside container'),
        ),
        ],
      ),*/

      /* Padding(
        padding: EdgeInsets.all(50),
        child: Text('Hello',
        style: TextStyle(
          color: Colors.grey,
        ),),
      ),*/


      /*Center(
        child: IconButton(onPressed: (){
          print('I have been pressed');
        },
            icon: Icon(Icons.mail),
            color: Colors.blueAccent,)*/


        /*ElevatedButton.icon(onPressed:(){
          print('I have been pressed');
        },icon: Icon(Icons.ac_unit_rounded),
          label: Text('It is snowy outside'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.amber,
              elevation: 3,
            ),
        ),*/


        /*Icon(Icons.airplanemode_on_rounded,
        size: 20,) */
        
        //Image.asset('photos/default.jpg')
          /*child: Text(
          'Hello guys',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.red,*/

      floatingActionButton: FloatingActionButton(onPressed: null,
        child: Text('Click'),
      ),
    );
  }
}


