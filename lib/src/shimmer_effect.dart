import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

/// Shimmer animatsiyasini yaratish uchun umumiy widget
class ShimmerEffect extends StatelessWidget {
  final Widget child;
  final Color baseColor;
  final Color highlightColor;
  final Duration duration;
  final bool reverse;

  const ShimmerEffect({
    super.key,
    required this.child,
    this.baseColor = Colors.grey,
    this.highlightColor = Colors.white,
    this.duration = const Duration(milliseconds: 1500),
    this.reverse = false,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: baseColor,
      highlightColor: highlightColor,
      period: duration,
      direction: reverse ? ShimmerDirection.rtl : ShimmerDirection.ltr,
      child: child,
    );
  }
}
