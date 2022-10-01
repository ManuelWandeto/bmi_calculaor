import 'package:flutter/material.dart';

class CardBox extends StatelessWidget {
  const CardBox({
    super.key,
    this.height,
    this.color = const Color(0xFF1D1F33),
    required this.child,
  });
  final double? height;
  final Color? color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: child,
    );
  }
}