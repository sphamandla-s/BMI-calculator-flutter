import 'package:bmi_calculator/IbmLayout.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/gender.dart';
import 'CardLayout.dart';
import 'heightCard.dart';

class InputApp extends StatefulWidget {
  const InputApp({Key? key}) : super(key: key);

  @override
  State<InputApp> createState() => _InputAppState();
}

class _InputAppState extends State<InputApp> {
  final int _activeColor = 0xFF1D1E33;
  int _maleColor = 0xFF1D1E33;
  int _femaleColor = 0xFF1D1E33;

  void _changeColor(Gender gender) {
    gender == Gender.male && _maleColor == _activeColor ? setState(() {_maleColor = 0xFFFFFFF;_femaleColor = _activeColor;}) : setState(() {_maleColor = _activeColor;});
    gender == Gender.female && _femaleColor == _activeColor ? setState(() {_femaleColor = 0xFFFFFFF;_maleColor = _activeColor;}) : setState(() {_femaleColor = _activeColor;});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("IBM CALCULATOR"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      _changeColor(Gender.male);
                    },
                    child: IbmLayout(Color(_maleColor),
                        const CardLayout("MALE", Icons.male_outlined)),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                      onTap: () {
                        _changeColor(Gender.female);
                      },
                      child: IbmLayout(Color(_femaleColor),
                          const CardLayout("FEMALE", Icons.female_outlined))),
                ),
              ],
            ),
          ),
          const Expanded(
            child: IbmLayout(Color(0xFF1D1E33), HeightCard()),),
          Expanded(
              child: Row(
            children: const [
              Expanded(
                child: IbmLayout(Color(0xFF1D1E33), Icon(Icons.access_alarm)),
              ),
              Expanded(
                child: IbmLayout(Color(0xFF1D1E33), Icon(Icons.access_alarm)),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
