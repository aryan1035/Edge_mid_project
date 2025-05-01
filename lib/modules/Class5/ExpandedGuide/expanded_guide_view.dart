// Expanded Widget
import 'package:flutter/material.dart';

class ExpandedGuide extends StatelessWidget {
  const ExpandedGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Expanded Guide"),),
      body: Row(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              color: Colors.blue,
              height: 100,
              child: const Center(child: Text('Expanded 2x')),
            ),
          ),
          const SizedBox(width: 5,),
          Expanded(
            flex: 4,
            child: Container(
              color: Colors.cyan,
              height: 100,
              child: const Center(child: Text('Expanded 1x')),
            ),
          ),
        ],
      ),
    );
  }
}
