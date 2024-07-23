import 'package:cuurencyconvertor/Pages/currency_convertor.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  // now creating a widget func in MyApp class named build
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CurrencyConvertor(),
    );
  }
}

