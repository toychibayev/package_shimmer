import 'package:flutter/material.dart';
import 'shimmer_container.dart';

class ShimmerList extends StatelessWidget {
  final int itemCount;
  final double height;
  final double width;
  final EdgeInsetsGeometry padding;

  const ShimmerList({
    super.key,
    this.itemCount = 5,
    this.height = 100,
    this.width = double.infinity,
    this.padding = const EdgeInsets.all(8.0),
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount,
      padding: padding,
      itemBuilder: (_, index) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: ShimmerContainer(
          child: Container(height: height, width: width),
        ),
      ),
    );
  }
}
