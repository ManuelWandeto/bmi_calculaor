import 'package:flutter/material.dart';
import 'components/calculate_button.dart';
import 'components/card_box.dart';

class Results extends StatelessWidget {
  const Results({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      bottomSheet: CalculateButton(
          label: 'RE-CALCULATE YOUR BMI',
          onTap: () {
            Navigator.pop(context);
          }),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Your Result',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(
              height: 20,
            ),
            CardBox(
              height: 500,
              color: const Color(0xFF1D1F33),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'NORMAL',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Nunito',
                      color: Color(0xFF11673B),
                    ),
                  ),
                  Text(
                    '22.1',
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge
                        ?.copyWith(fontSize: 92),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Normal BMI range:',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(color: const Color(0xFF8F8F9C)),
                  ),
                  Text(
                    '18.5 - 25 kg/m2',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      'You have a normal body weight. keep it up!',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
