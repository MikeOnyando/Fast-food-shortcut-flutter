import 'package:flutter/material.dart';

class Mocha extends StatelessWidget {
  const Mocha({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mocha"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text("Welcome to Mocha"),
      ),
    );
  }
}
