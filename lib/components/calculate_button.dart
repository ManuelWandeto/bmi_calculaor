import 'package:flutter/material.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({super.key, required this.onTap, required this.label});
  final Function onTap;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Material(
        color: const Color(0xFFEA1556),
        child: InkWell(
          splashColor: Colors.pink.withOpacity(.6),
          onTap: () => onTap(),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              label,
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    color: Colors.white,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
