import 'package:flutter/material.dart';
import 'package:quotes/quote.dart';
import 'card_template.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Quote> quotes = [Quote(author: 'Whatever goes up must come down',text: 'Helio'), Quote(author: 'The Indian youtuber knows it all',text: 'Mahatma gandhi'), Quote(author: 'Wacha icome venye itacome' , text: 'Comrade')];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Quote of the day'),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.grey,
      ),
      body: Column(
        children: quotes.map((quote) =>CardTemplate(quote: quote,
    delete:(){
          setState(() {
            quotes.remove(quote);
          });
    }) ).toList(),
      ),
    );
  }
}

