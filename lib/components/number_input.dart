import 'package:flutter/material.dart';
import 'card_box.dart';
import 'dart:async';
import 'round_icon_button.dart';

class NumberInput extends StatefulWidget {
  const NumberInput({
    super.key,
    required this.label,
    this.unit = '',
  });
  final String label;
  final String unit;

  @override
  State<NumberInput> createState() => _NumberInputState();
}

class _NumberInputState extends State<NumberInput> {
  double _value = 0;
  Timer? timer;
  void incrementValue() {
    if (_value < 500) setState(() => _value++);
  }

  void decrementValue() {
    if (_value > 0) setState(() => _value--);
  }

  void longPressHandler(Function callback) {
    Future.delayed(const Duration(milliseconds: 200), () {
      timer = Timer.periodic(const Duration(milliseconds: 60), (timer) {
        callback();
      });
    });
  }

  void longPressCancelHandler(Timer? timer) {
    if (timer != null) timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return CardBox(
      height: 200,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(widget.label, style: Theme.of(context).textTheme.labelLarge),
        Text.rich(TextSpan(children: [
          TextSpan(
              text: _value.round().toString(),
              style: Theme.of(context).textTheme.displayLarge),
          TextSpan(
            text: widget.unit,
            style: TextStyle(
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w300,
              fontSize: 14,
              color: Colors.white.withOpacity(.7),
            ),
          ),
        ])),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RoundIconButton(
              icon: Icons.remove,
              onPressed: () => {decrementValue()},
              onLongPress: () => longPressHandler(decrementValue),
              onLongPressUp: () => longPressCancelHandler(timer),
              onLongPressMove: () => longPressCancelHandler(timer),
            ),
            const SizedBox(
              width: 10,
            ),
            RoundIconButton(
              icon: Icons.add,
              onPressed: () => {incrementValue()},
              onLongPress: () => longPressHandler(incrementValue),
              onLongPressUp: () => longPressCancelHandler(timer),
              onLongPressMove: () => longPressCancelHandler(timer),
            ),
          ],
        ),
      ]),
    );
  }
}
