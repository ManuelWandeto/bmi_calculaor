import 'package:flutter/material.dart';
import 'components/calculate_button.dart';
import 'components/card_box.dart';
import 'constants.dart';

class Results extends StatelessWidget {
  const Results({super.key, required this.title, required this.data});
  final String title;
  final Map<String, String> data;

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
              color: kActiveCardColor,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    data['label']!,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Nunito',
                      color: Color(0xFF11673B),
                    ),
                  ),
                  Text(
                    data['bmi']!,
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
                      data['message']!,
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
