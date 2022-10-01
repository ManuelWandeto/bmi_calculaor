import 'package:flutter/material.dart';
import 'card_box.dart';

enum Gender { male, female }

class GenderInput extends StatelessWidget {
  const GenderInput({super.key, required this.gender});
  final Gender gender;
  @override
  Widget build(BuildContext context) {
    return CardBox(
      height: 170,
      child: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              gender == Gender.male ? Icons.male : Icons.female,
              size: 72,
            ),
            const SizedBox(height: 20),
            Text(
              gender == Gender.male ? 'MALE' : 'FEMALE',
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ],
        ),
      ),
    );
  }
}
