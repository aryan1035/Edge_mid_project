import 'package:flutter/material.dart';

class ColumnExample extends StatelessWidget {
  const ColumnExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Row Example')),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.star, color: Color.fromRGBO(255, 157, 59, 1)),
            Text('Row Example'),
            Icon(Icons.star, color: Color.fromARGB(255, 255, 190, 59)),
          ],
        ),
),
);
}}