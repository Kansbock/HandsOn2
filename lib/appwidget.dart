
import 'package:flutter/material.dart';
import 'package:handson2/handson2.dart';


class AppWidget extends StatelessWidget{
  const AppWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HandsOn2(),
    );
  }
  
}
