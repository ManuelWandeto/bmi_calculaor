import 'package:flutter/material.dart';
import 'components/gender_input.dart';
import 'components/height_input.dart';
import 'components/number_input.dart';
import 'components/calculate_button.dart';
import 'results.dart';
import 'dart:math' as math;
import 'diagnose.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key, required this.title});
  final String title;

  @override
  MyHomeState createState() => MyHomeState();
}

class MyHomeState extends State<MyHome> {
  Gender? _activeGender;
  double _height = 100;
  double _weight = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(widget.title)),
        bottomSheet: CalculateButton(
          label: 'CALCULATE YOUR BMI',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Results(
                  title: widget.title,
                  data: diagnose(_weight / math.pow(_height / 100, 2)),
                ),
              ),
            );
          },
        ),
        body: Center(
            child: Padding(
          padding: const EdgeInsets.all(30),
          child: Container(
            constraints: const BoxConstraints.expand(),
            // decoration: const BoxDecoration(color: Colors.orange),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: GenderInput(
                        gender: Gender.male,
                        isActive: _activeGender != null &&
                            _activeGender == Gender.male,
                        onTap: () {
                          setState(() {
                            _activeGender = Gender.male;
                          });
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        child: GenderInput(
                      gender: Gender.female,
                      isActive: _activeGender != null &&
                          _activeGender == Gender.female,
                      onTap: () {
                        setState(() {
                          _activeGender = Gender.female;
                        });
                      },
                    ))
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                HeightInput(
                  onChanged: (value) {
                    setState(() {
                      _height = value;
                    });
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: NumberInput(
                        label: 'WEIGHT',
                        unit: 'kgs',
                        onChanged: (value) {
                          setState(() {
                            _weight = value;
                          });
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Expanded(
                      child: NumberInput(
                        label: 'AGE',
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        )));
  }
}
