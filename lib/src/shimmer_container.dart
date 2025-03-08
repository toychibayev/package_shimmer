import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

/// A customizable shimmer loading placeholder.
///
/// This widget provides a shimmer effect that can be used as a placeholder
/// while data is loading. It supports custom colors, animation duration,
/// and rounded corners.
class ShimmerContainer extends StatelessWidget {
  /// Creates a ShimmerContainer widget.
  ///
  /// The [child] is the widget that will be wrapped with a shimmer effect.
  const ShimmerContainer({
    super.key,
    required this.child,
    this.baseColor = Colors.grey,
    this.highlightColor = Colors.white,
    this.borderRadius = BorderRadius.zero,
    this.duration = const Duration(seconds: 2),
  });

  /// The widget that will be shown with a shimmer effect.
  final Widget child;

  /// The base color of the shimmer effect.
  final Color baseColor;

  /// The highlight color of the shimmer effect.
  final Color highlightColor;

  /// The border radius of the shimmer container.
  final BorderRadius borderRadius;

  /// The duration of the shimmer animation.
  final Duration duration;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: baseColor,
      highlightColor: highlightColor,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: borderRadius,
          color: baseColor,
        ),
        child: child,
      ),
    );
  }
}
