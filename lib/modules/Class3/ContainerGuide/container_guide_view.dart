import 'package:flutter/material.dart';

class ContainerExample extends StatelessWidget {
  const ContainerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Container Example')),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          color: const Color.fromARGB(255, 17, 184, 134),
          child: const Text('This is a Container Example!'),
        ),
      ),
    );
  }
}