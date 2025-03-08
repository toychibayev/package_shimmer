import 'package:flutter/material.dart';
import 'package:shimmer_loading_placeholder/package_shimmer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Shimmer Example')),
        body: ListView.builder(
          itemCount: 5,
          itemBuilder: (_, index) => const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: ShimmerContainer(
              child: ListTile(
                leading: CircleAvatar(radius: 30),
                title: SizedBox(
                  height: 10,
                  width: 100,
                  child: DecoratedBox(decoration: BoxDecoration(color: Colors.white)),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
