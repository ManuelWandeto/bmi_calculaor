import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({
    super.key,
    required this.onPressed,
    required this.onLongPress,
    required this.onLongPressUp,
    required this.onLongPressMove,
    required this.icon,
  });
  final Function onPressed;
  final Function onLongPress;
  final Function onLongPressUp;
  final Function onLongPressMove;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPressed(),
      onLongPress: () => onLongPress(),
      onLongPressUp: () => onLongPressUp(),
      onLongPressMoveUpdate: (moveDetails) {
        if (moveDetails.localOffsetFromOrigin.distance > 30) onLongPressMove();
      },
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.grey,
        ),
        child: Center(
          child: Icon(icon),
        ),
      ),
    );
  }
}
