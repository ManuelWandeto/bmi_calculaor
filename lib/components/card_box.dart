import 'package:flutter/material.dart';

class CardBox extends StatelessWidget {
  const CardBox({super.key, required this.height, required this.child});
  final double height;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: const BoxDecoration(
          color: Color(0xFF1D1F33),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: child,
    );
  }
}