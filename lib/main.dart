import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/HomePage.dart';
import 'package:providers/buisness_logic/counter.dart';

void main (){
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Counter() ,)
      ],
      child: MyApp()));
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.red.shade800)),
      home: Homepage(),
    );
  }
}
