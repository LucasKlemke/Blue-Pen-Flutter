import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const QuoteGenerator(),
    );
  }
}

class QuoteGenerator extends StatefulWidget {
  const QuoteGenerator({super.key});

  @override
  State<QuoteGenerator> createState() => _QuoteGeneratorState();
}

class _QuoteGeneratorState extends State<QuoteGenerator> {
  final List<String> quotes = [
    'Bolígrafo azul.',
    'Caneta azul.',
    'Blue pen.',
    'Stylo bleu.',
    'Blauer Stift.'
  ];
  String quote = 'Random Quote';

  void generateQuote() {
    final random = Random();
    setState(() {
      quote = quotes[random.nextInt(quotes.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quote Generator Blue pen edition'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(quote),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: generateQuote,
              child: const Text('Generate Quote'),
            ),
          ],
        ),
      ),
    );
  }
}
