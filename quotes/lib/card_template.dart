import 'package:flutter/material.dart';
import 'package:quotes/quote.dart';

class CardTemplate extends StatelessWidget {

  Quote quote;
  final Function delete;
  CardTemplate({required this.quote, required this.delete });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(quote.author),
            Text(quote.text),
            const SizedBox(height: 20,),
            Container(
              alignment: Alignment.bottomRight,
                child: TextButton.icon(
                  icon: const Icon(Icons.delete_outline),
                  label: const Text('Delete'),
                  onPressed: () {
                    delete();
                },)
            )
          ],
        ),
      ),
    );
  }
}
