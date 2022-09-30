import 'package:flutter/material.dart';
import 'components/gender_input.dart';
import 'components/card_box.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key, required this.title});
  final String title;

  @override
  MyHomeState createState() => MyHomeState();
}

class MyHomeState extends State<MyHome> {
  double _height = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(widget.title)),
        body: Center(
            child: Padding(
          padding: const EdgeInsets.all(30),
          child: Container(
            constraints: const BoxConstraints.expand(),
            // decoration: const BoxDecoration(color: Colors.orange),
            child: Column(
              children: [
                Row(
                  children: const [
                    Expanded(
                      child: GenderInput(gender: Gender.male),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(child: GenderInput(gender: Gender.female))
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: CardBox(
                          height: 200,
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
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 14),
                                child: Slider(
                                  min: 0,
                                  max: 200,
                                  value: _height,
                                  onChanged: (value) =>
                                      {setState(() => _height = value)},
                                ),
                              )
                            ],
                          )),
                    )
                  ],
                )
              ],
            ),
          ),
        )));
  }
}
