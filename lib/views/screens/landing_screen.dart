import 'package:flutter/material.dart';

class Landing_Screen extends StatelessWidget {
  const Landing_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: Colors.amberAccent,
      ),
    );
  }
}
