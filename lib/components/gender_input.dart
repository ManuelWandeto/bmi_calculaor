import 'package:flutter/material.dart';
import 'card_box.dart';
import '../constants.dart';

enum Gender { male, female }

class GenderInput extends StatelessWidget {
  const GenderInput({
    super.key,
    required this.gender,
    required this.onTap,
    required this.isActive,
  });
  final Gender gender;
  final Function onTap;
  final bool isActive;
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: CardBox(
        height: 170,
        color: isActive ? kActiveCardColor : null,
        child: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                gender == Gender.male ? Icons.male : Icons.female,
                size: 72,
                color: isActive ? Colors.white : kInactiveTextColor,
              ),
              const SizedBox(height: 20),
              Text(
                gender == Gender.male ? 'MALE' : 'FEMALE',
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: isActive ? Colors.white : kInactiveTextColor,
                      fontWeight: isActive ? FontWeight.w600 : FontWeight.w400,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
