import 'package:flutter/material.dart';
import 'card_box.dart';

class HeightInput extends StatefulWidget {
  const HeightInput({super.key, this.onChanged});
  final Function? onChanged;
  @override
  State<HeightInput> createState() => _HeightInputState();
}

class _HeightInputState extends State<HeightInput> {
  double _height = 100;
  @override
  Widget build(BuildContext context) {
    return CardBox(
      height: 190,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'HEIGHT',
            style: Theme.of(context).textTheme.labelLarge,
          ),
          Text(
            '${_height.round()} cm',
            style: Theme.of(context).textTheme.displayLarge,
          ),
          const SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Slider(
              min: 0,
              max: 200,
              value: _height,
              onChanged: (value) {
                setState(() => _height = value);
                widget.onChanged?.call(_height);
              },
            ),
          )
        ],
      ),
    );
  }
}
